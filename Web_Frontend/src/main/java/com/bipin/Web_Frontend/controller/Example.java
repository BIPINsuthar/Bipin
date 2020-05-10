package com.bipin.Web_Frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Example 
{
	@RequestMapping("\registration")
	public String Registration()
	{
		return "registration";
		
	}
	
}
