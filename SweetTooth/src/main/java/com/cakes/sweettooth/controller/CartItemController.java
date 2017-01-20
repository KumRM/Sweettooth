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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.sweettooth.model.CartItem;
import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.service.CartItemService;
import com.cakes.sweettooth.service.ProductService;
import com.cakes.sweettooth.service.UserDetailsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CartItemController 
{
	@Autowired
	CartItemService cartItemService;
	@Autowired
	UserDetailsService userDetailsService;
	
	@Autowired
	ProductService productService;
	@RequestMapping("/buyNow-{productId}")
	public String buyNow(Model model, @PathVariable("productId") int productId, @ModelAttribute("cartItem") CartItem cartItem, @RequestParam("userId")int userId, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userId=userDetailsService.getUserByName(userName).getUserId();
		cartItem.setCartId(userId);
		cartItem.setUserId(userId);
		cartItem.setProductId(productId);
		
		String productName=productService.getProductById(productId).getProductName();
		cartItem.setProductQuantity(1);
		cartItem.setProductName(productName);
		int Price = productService.getProductById(productId).getProductPrice();
		cartItem.setProductPrice(Price);
		cartItem.setFlag(false);
		
		cartItemService.addCartItem(cartItem);
		
		productService.updateProductQuantity(productId,cartItem.getProductQuantity());
		
		httpSession.setAttribute("cartItemId", cartItem.getCartItemId());
		int cartItemId = (Integer) httpSession.getAttribute("cartItemId");
		return "redirect:/CartList-"+cartItemId;
	}
	
	@RequestMapping("/CartList-{cartItemId}")
	public String cartList(Model model, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		int userId=userDetailsService.getUserByName(userName).getUserId();
		
		httpSession.setAttribute("userId", userId);
		int cartItemId = (Integer) httpSession.getAttribute("cartItemId");
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String cartItemList = gson.toJson(cartItemService.getCartListById(cartItemId));
		model.addAttribute("cartList", cartItemList);
		return "/CartList";
	}
	
	@RequestMapping("/checkout")
	public String checkout(@RequestParam("userId")int userId, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userId=userDetailsService.getUserByName(userName).getUserId();
		
//		httpSession.setAttribute("userId", userId);
		return "redirect:/cart?userId="+userId;
	}
	
	
	
	
	
//===========ADD TO CART============
	
	
	@RequestMapping("/addToCart-{productId}")
	public String addToCart(Model model, @PathVariable("productId") int productId, @ModelAttribute("cartItem") CartItem cartItem, @RequestParam("userId")int userId, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userId=userDetailsService.getUserByName(userName).getUserId();
		cartItem.setCartId(userId);
		cartItem.setUserId(userId);
		cartItem.setProductId(productId);
		if(cartItem.getProductQuantity()==0)
		{
			cartItem.setProductQuantity(1);
		}
		
		String productName=productService.getProductById(productId).getProductName();
		cartItem.setProductName(productName);
		int Price = productService.getProductById(productId).getProductPrice();
		cartItem.setProductPrice(Price);
		cartItem.setFlag(false);
		
		cartItemService.addCartItem(cartItem);
		
		productService.updateProductQuantity(productId,cartItem.getProductQuantity());
		
		httpSession.setAttribute("cartItemId", cartItem.getCartItemId());
		int cartItemId = (Integer) httpSession.getAttribute("cartItemId");
		return "redirect:/CartItems-"+cartItemId;
	}
	
	@RequestMapping("/CartItems-{cartItemId}")
	public String showCart(Model model, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		int userId=userDetailsService.getUserByName(userName).getUserId();
		
		httpSession.setAttribute("userId", userId);
		int cartItemId = (Integer) httpSession.getAttribute("cartItemId");
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String showItemList = gson.toJson(cartItemService.getCartList(userId));
		model.addAttribute("showList", showItemList);
		return "/CartItems";
	}
	
	@RequestMapping("/deleteCartItem-{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId")int cartItemId)
	{
		cartItemService.deleteCartItem(cartItemId);
		return "redirect:/CartItems-"+cartItemId;
	}
}
