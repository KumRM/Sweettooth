package com.cakes.sweettooth.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cakes.sweettooth.model.Baker;
import com.cakes.sweettooth.model.CartItem;
import com.cakes.sweettooth.model.Category;
import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.model.SubCategory;
import com.cakes.sweettooth.service.BakerService;
import com.cakes.sweettooth.service.CategoryService;
import com.cakes.sweettooth.service.ProductService;
import com.cakes.sweettooth.service.SubCategoryService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class ProductController 
{
	@Autowired
	SubCategoryService subCategoryService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	BakerService bakerService;
	@Autowired
	ProductService productService;
	
	@RequestMapping("/ProductForm")
	public String ProductForm(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("baker", new Baker());
		model.addAttribute("product", new Product());
		
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("subCategoryList", subCategoryService.getList());
		model.addAttribute("bakerList", bakerService.getList());
		model.addAttribute("productList", productService.getJsonProductList());
//		model.addAttribute("productList", productService.getProductList());
		return "/ProductForm";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model model,@Valid @ModelAttribute("product")Product product, BindingResult bindingResult)
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.getList());
			model.addAttribute("subCategoryList", subCategoryService.getList());
			model.addAttribute("bakerList", bakerService.getList());
			model.addAttribute("productList", productService.getJsonProductList());
			return "/ProductForm";
		}
		else
		{
			Category category = categoryService.getCategoryByName(product.getCategory().getCategoryName());
			product.setCategory(category);
			product.setCategoryId(category.getCategoryId());
		
			SubCategory subCategory = subCategoryService.getSubCategoryByName(product.getSubCategory().getSubCategoryName());
			product.setSubCategory(subCategory);
			product.setSubCategoryId(subCategory.getSubCategoryId());
		
			Baker baker = bakerService.getBakerByName(product.getBaker().getBakerName());
			product.setBaker(baker);
			product.setBakerId(baker.getBakerId());
		
			productService.addProduct(product);
		
			String path = "G:\\SweetTooth\\src\\main\\webapp\\resources\\Images\\";
			path = path + String.valueOf(product.getProductId())+".jpg";
			File file = new File(path);
			MultipartFile multipartFile = product.getProductImage();
		
			if(!multipartFile.isEmpty())
			{
				try
				{
					byte[] bytes;
					bytes = multipartFile.getBytes();
					FileOutputStream fos = new FileOutputStream(file);
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					bos.write(bytes);
					bos.close();
				}
				catch(Exception e)
				{
					e.getMessage();
				}
			}
			else
			{
				System.out.println("Image Upload Unsuccessful");
			}
			return "redirect:/ProductForm";
		}
	}
	
	@RequestMapping("/editProduct-{productId}")
	public String editProduct(Model model, @PathVariable("productId") int productId)
	{
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("subCategoryList", subCategoryService.getList());
		model.addAttribute("bakerList", bakerService.getList());
		model.addAttribute("product", productService.getProductById(productId));
		return "/ProductForm";
	}
	
	@RequestMapping("/deleteProduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/ProductForm";
	}
	
	@RequestMapping("/viewProduct-{productId}")
	public String viewProduct(Model model, @PathVariable("productId") int productId, @ModelAttribute("cartItem") CartItem cartItem, HttpSession httpSession)
	{
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String product = gson.toJson(productService.getProductViewById(productId));
		model.addAttribute("prd", product);
		httpSession.setAttribute("productId", productId);
		return "/ProductDetails";
	}
	
	@RequestMapping("/allProducts")
	public String allProducts(Model model)
	{
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String allproducts = productService.getJsonProductList();
		model.addAttribute("allproducts", allproducts);
		return "DisplayProducts";
	}
}
