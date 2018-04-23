package com.eduask.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.eduask.model.StarProduct;
import com.eduask.model.User;
import com.eduask.service.PhoneService;
import com.eduask.service.ProductService;
import com.eduask.service.UserService;


@Controller
@RequestMapping("/first")
public class First {
	
	@Autowired
	private PhoneService phone;
	
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/registersuccess")
	public ModelAndView registersuccess(HttpServletRequest req){
		ModelAndView mv=new ModelAndView();
		User user=new User();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setPhone(req.getParameter("phone"));
		userservice.insertuser(user);
		mv.setViewName("Login");
		return mv;
	}
	
	@RequestMapping("loginsuccess")
	public ModelAndView loginsuccess(User user,HttpSession session){
		ModelAndView mv=new ModelAndView();
		System.out.println("登录成功user："+user);
		session.setAttribute("user", userservice.selectuserone(user));
		System.out.println("session:"+session.getAttribute("user"));
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("search")
	public ModelAndView search(HttpServletRequest req){
		ModelAndView mv=new ModelAndView();
		String search=req.getParameter("search");
		req.setAttribute("search", search); 
		mv.setViewName("search");
		return mv;
	}
	
	
	
}
