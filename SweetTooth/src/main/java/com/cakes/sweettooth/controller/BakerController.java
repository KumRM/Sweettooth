package com.cakes.sweettooth.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cakes.sweettooth.model.Baker;
import com.cakes.sweettooth.service.BakerService;

@Controller
public class BakerController 
{
	@Autowired
	BakerService bakerService;
	
	@RequestMapping("/BakerForm")
	public String bakerForm(Model model)
	{
		model.addAttribute("baker", new Baker());
//		model.addAttribute("bakerList", bakerService.getList());
		model.addAttribute("bakerList", bakerService.getJsonList());
		return "/BakerForm";
	}

	@RequestMapping("/addBaker")
	public String addBaker(@Valid @ModelAttribute("baker")Baker baker, BindingResult bindingResult, Model model)
	{
		if(bindingResult.hasErrors())
		{			
			model.addAttribute("bakerList", bakerService.getJsonList());
			return "/BakerForm";
		}
		else
		{
			bakerService.addBaker(baker);
			return "redirect:/BakerForm";
		}
	}
	
	@RequestMapping("/editBaker-{bakerId}")
	public String editBaker(Model model, @PathVariable("bakerId") int bakerId)
	{
		model.addAttribute("baker", bakerService.getBakerById(bakerId));
		return "/BakerForm";
	}
	
	@RequestMapping("/deleteBaker-{bakerId}")
	public String deleteBaker(@PathVariable("bakerId") int bakerId)
	{
		bakerService.deleteBaker(bakerId);
		return "redirect:/BakerForm";
	}

}
