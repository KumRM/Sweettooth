package com.cakes.sweettooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CakeController {

	@RequestMapping("/")
	public String hello(Model model) {

		return "index";
	}
	
	@RequestMapping("/403")
	public String error403()
	{
		return "/AccessDenied";
	}
}