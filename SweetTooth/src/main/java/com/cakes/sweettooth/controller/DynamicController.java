package com.cakes.sweettooth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cakes.sweettooth.service.CategoryService;

@ControllerAdvice
public class DynamicController 
{
	@Autowired
	CategoryService categoryService; 
	
	@ModelAttribute
	public Model dropdown(Model model)
	{
		model.addAttribute("categoryListDrop", categoryService.getList());
		return model;
	}
}
