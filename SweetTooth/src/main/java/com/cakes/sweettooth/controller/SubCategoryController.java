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
import com.cakes.sweettooth.model.SubCategory;
import com.cakes.sweettooth.service.CategoryService;
import com.cakes.sweettooth.service.SubCategoryService;

@Controller
public class SubCategoryController 
{
	@Autowired
	SubCategoryService subCategoryService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/SubCategoryForm")
	public String subCategoryForm(Model model)
	{
		model.addAttribute("subCategory", new SubCategory());
//		model.addAttribute("subCategoryList", subCategoryService.getList());
		model.addAttribute("subCategoryList", subCategoryService.getJsonList());
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("category", new Category());
		return "/SubCategoryForm";
	}
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(Model model, @Valid @ModelAttribute("subCategory")SubCategory subCategory, BindingResult bindingResult)
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.getList());
			model.addAttribute("subCategoryList", subCategoryService.getJsonList());
			return "/SubCategoryForm";
		}
		else
		{	
		Category category = categoryService.getCategoryByName(subCategory.getCategory().getCategoryName());
		subCategory.setCategory(category);
		subCategory.setCategoryId(category.getCategoryId());
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/SubCategoryForm";
		}
	}
	
	@RequestMapping("/editSubCategory-{subCategoryId}")
	public String editSubCategory(Model model, @PathVariable("subCategoryId") int subCategoryId)
	{
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("subCategory", subCategoryService.getListById(subCategoryId));
		return "/SubCategoryForm";
	}
	
	@RequestMapping("/deleteSubCategory-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/SubCategoryForm";
	}
}
