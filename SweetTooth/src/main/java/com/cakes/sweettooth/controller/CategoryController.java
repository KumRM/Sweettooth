package com.cakes.sweettooth.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cakes.sweettooth.model.Category;
import com.cakes.sweettooth.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/CategoryForm")
	public String categoryForm(Model model)
	{
		model.addAttribute("category", new Category());
//		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("categoryList", categoryService.getJsonList());
		return "/CategoryForm";
	}

	@RequestMapping("/addCategory")
	public String addCategory(Model model, @Valid @ModelAttribute("category")Category category, BindingResult bindingResult)
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.getJsonList());
			return "/CategoryForm";
		}
		else
		{
			categoryService.addCategory(category);
			return "redirect:/CategoryForm";
		}
	}
	
	@RequestMapping("/editCategory-{categoryId}")
	public String editCategory(Model model, @PathVariable("categoryId") int categoryId)
	{
		model.addAttribute("category", categoryService.getListById(categoryId));
		return "/CategoryForm";
	}
	
	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.deleteCategory(categoryId);
		return "redirect:/CategoryForm";
	}
}
