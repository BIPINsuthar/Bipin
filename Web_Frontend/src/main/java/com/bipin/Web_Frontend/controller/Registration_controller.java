package com.bipin.Web_Frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bipin.Web_Frontend.dao.RegDao;
import com.bipin.Web_Frontend.dto.User;


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
		
		User r=new User(fname,lname,pass,phone,email,date,gender,address,"normal");
		RegDao rd=new RegDao();
		int id=rd.setregValue(r);
	    
		HttpSession h=req.getSession();
		h.setAttribute("message","Registration succesffully done! your ID="+id);
		
		return "registration";
		
	}

}
