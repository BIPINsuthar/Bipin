package com.bipin.Web_Frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bipin.Web_Frontend.dto.*;
import com.bipin.Web_Frontend.dao.*;


@Controller
public class Registration_controller 
{
	
	@RequestMapping("/registration")
    public String value()
    {
		return "registration";
    }
	
	@RequestMapping("registrationform")
	public String Registrationform(HttpServletRequest req,HttpServletResponse res)
	{
		
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String pass=req.getParameter("pass");
		//String cpass=req.getParameter("cpass");
		String phone=req.getParameter("phone");
		String email=req.getParameter("email");
		String date=req.getParameter("date");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		//String type=req.getParameter("type");
		
		Registration r=new Registration(fname,lname,pass,phone,email,date,gender,address);
		RegDao rd=new RegDao();
		rd.setregValue(r);
	   
		return "login";
		
	}

}
