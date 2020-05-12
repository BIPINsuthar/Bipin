package com.bipin.Web_Frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bipin.Web_Frontend.dao.LoginDao;
import com.bipin.Web_Frontend.dto.User;

@Controller
public class Login 
{
	@RequestMapping("/loginpage")
	public String login(HttpServletRequest req,HttpServletResponse res)
	{
		String user=req.getParameter("user");
		String pass=req.getParameter("pass");
		
		LoginDao ld=new LoginDao();
		User u=ld.getuser(user, pass);
		System.out.println("User::"+u);
		HttpSession h=req.getSession();
		
		if(u==null)
		{
			h.setAttribute("message","Login unsuccesful!!");
			return "login";
		}
		else
		{
			h.setAttribute("message","Login successfully done!");
			return "master";
			
		}
		
		
	}

}
