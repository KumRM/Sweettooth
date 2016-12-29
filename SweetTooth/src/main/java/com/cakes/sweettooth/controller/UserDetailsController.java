package com.cakes.sweettooth.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.ShippingAddress;
import com.cakes.sweettooth.model.UserDetails;
import com.cakes.sweettooth.service.UserDetailsService;

@Controller
public class UserDetailsController 
{
	@Autowired
	UserDetailsService userDetailsService;
	
	@RequestMapping("/RegistrationForm")
	public String registrationForm(Model model)
	{
		UserDetails userDetails = new UserDetails(); 
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		
//		shippingAddress.setUserDetails(userDetails);
//		billingAddress.setUserDetails(userDetails);
		
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);

		model.addAttribute("userDetails", userDetails);
		return "/RegistrationForm";
	}
	
	@RequestMapping("/addUser")
	public String addUser(@ModelAttribute("userDetails")UserDetails userDetails)
	{
		userDetailsService.addUserDetails(userDetails);
		return "redirect:/RegistrationForm";
	}
	
	@RequestMapping("/LoginForm")
	public String login()
	{
		return "/LoginForm";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response)
	{
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 if (auth != null)
		 {    
			 new SecurityContextLogoutHandler().logout(request, response, auth);
		 }
		 return "redirect:/";
	}
}
