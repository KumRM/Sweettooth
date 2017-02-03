package com.cakes.sweettooth.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.sweettooth.model.WishList;
import com.cakes.sweettooth.service.ProductService;
import com.cakes.sweettooth.service.UserDetailsService;
import com.cakes.sweettooth.service.WishListService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class WishListController 
{
	@Autowired
	WishListService wishListService;
	
	@Autowired
	UserDetailsService userDetailsService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/addToWishList-{productId}")
	public String addToWishList(Model model, @PathVariable("productId") int productId, @ModelAttribute("wishList") WishList wishList, @RequestParam("userId")int userId, HttpSession httpSession) 
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userId=userDetailsService.getUserByName(userName).getUserId();
		wishList.setCartId(userId);
		wishList.setUserId(userId);
		wishList.setProductId(productId);
		
		String productName=productService.getProductById(productId).getProductName();
		wishList.setProductQuantity(1);
		wishList.setProductName(productName);
		int Price = productService.getProductById(productId).getProductPrice();
		wishList.setProductPrice(Price);
		wishList.setFlag(false);
		
		wishListService.addWishList(wishList);
		
		return "redirect:/WishList";
	}
	
	@RequestMapping("/WishList")
	public String wishList(Model model, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		int userId=userDetailsService.getUserByName(userName).getUserId();
		
		httpSession.setAttribute("userId", userId);
		int wishListId = (Integer) httpSession.getAttribute("cartItemId");
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String wishList = gson.toJson(wishListService.getWishList());
		model.addAttribute("wishList", wishList);
		return "/WishList";
	}
	
	@RequestMapping("/deleteWishList-{wishListId}")
	public String deleteWishList(@PathVariable("wishListId")int wishListId)
	{
		wishListService.deleteWishList(wishListId);
		return "redirect:/WishList";
	}
}
