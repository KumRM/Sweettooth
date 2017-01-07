package com.cakes.sweettooth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cakes.sweettooth.model.Category;
import com.cakes.sweettooth.service.CategoryService;

@Controller
public class CakeController {

	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/")
	public String hello(Model model) {
		
		model.addAttribute("category", new Category());
		model.addAttribute("categoryListDrop", categoryService.getList());
		return "index";
	}
	
	@RequestMapping("/403")
	public String error403()
	{
		return "/AccessDenied";
	}
}