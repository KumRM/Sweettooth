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

import com.cakes.sweettooth.model.CartItem;
import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.model.UserDetails;
import com.cakes.sweettooth.service.CartItemService;
import com.cakes.sweettooth.service.ProductService;
import com.cakes.sweettooth.service.UserDetailsService;

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
	public String buyNow(Model model, @PathVariable("productId") int productId, @ModelAttribute("cartItem") CartItem cartItem, @RequestParam("userId")int userId,Product product, HttpSession httpSession)
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
		
		productService.deleteProductQuantity(productId);
		httpSession.setAttribute("cartItemId", cartItem.getCartItemId());
		int cartItemId = (Integer) httpSession.getAttribute("cartItemId");
		return "/cartList-"+cartItemId;
	}
	
	@RequestMapping("/cartList-{cartItemId}")
	public String cartList()
	{
		return "";
	}
}
