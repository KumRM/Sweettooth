package com.cakes.sweettooth.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AutoCompleteController 
{
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody
	String getTags(@RequestParam String tagName) 
	{

		return simulateSearchResult(tagName);

	}

	private String simulateSearchResult(String tagName) {

		List<Product> result = new ArrayList<Product>();
		List<Product> search = productService.getProductList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String data = null;
		for (Product product: search) {
			if (product.getProductName().contains(tagName)) 
			{
				result.add(product);
				data=gson.toJson(result);
			}
		}

		return data;
	}
}
