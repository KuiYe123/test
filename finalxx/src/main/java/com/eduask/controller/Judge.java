package com.eduask.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;




import com.alibaba.fastjson.JSON;
import com.eduask.model.Page;
import com.eduask.model.User;
import com.eduask.service.PhoneService;
import com.eduask.service.ProductService;
import com.eduask.service.UserService;

@Controller
@RequestMapping("/judge")
public class Judge {
	@Autowired
	private UserService userservice;

	@Autowired
	private ProductService star;
	
	@Autowired
	private PhoneService phone;
	
	@RequestMapping("/loginjudge")
	@ResponseBody
	public Object loginjudge(User user) {
		System.out.println("登录判断user："+user);
		return userservice.selectuser(user);
	}

	@RequestMapping("/starproduct")
	@ResponseBody
	public Object starproduct() {

		return star.selectStar();
	}

	@RequestMapping("/hotproduct")
	@ResponseBody
	public Object hotproduct() {
		return star.selectHot();
	}

	@RequestMapping("/judgeone")
	@ResponseBody
	public Object judgeone(HttpServletRequest req) {
		String username=req.getParameter("username");
		System.out.println("传过来的username："+username);
		String a = "[\\w]{7,15}";
		String b = "";
		if(username==null){
			System.out.println("1");
			return false;
		}else if(username.matches(a)){
			return userservice.selectuser(username);
		}else if(username.matches(b)){
			System.out.println("2");
			return JSON.toJSONString("用户名不能为空");
		}else{
			return JSON.toJSONString("格式不正确");
		}	
	}
	
	@RequestMapping("/judgetwo")
	@ResponseBody
	public Object judgetwo(HttpServletRequest req){
		String a = "[\\w]{7,15}";
		String b = "";
		String password=req.getParameter("password");
		if(password.matches(b)){
			return JSON.toJSONString("密码不能为空");
		}else if(password.matches(a)){
			return true;
		}else{
			return JSON.toJSONString("格式不正确");
		}
	}
	
	@RequestMapping("/judgethree")
	@ResponseBody
	public Object judgethree(HttpServletRequest req){
		String a = "[\\w]{7,15}";
		String b = "";
		String password=req.getParameter("password");
		String zpassword=req.getParameter("zpassword");
		if(zpassword.matches(b)){
			return JSON.toJSONString("请确认密码");
		}else if(zpassword.equals(password)){
			return true;
		}else{
			return JSON.toJSONString("密码不一致");
		}
	}
	
	@RequestMapping("/judgefour")
	@ResponseBody
	public Object judgefour(HttpServletRequest req){
		String c="1[3-8][\\d]{9}";
		String a="";
		String phone=req.getParameter("phone");
		if(phone.matches(c)){
			return true;
		}else if(phone.matches(a)){
			return JSON.toJSONString("请输入手机号");
		}else{
			return JSON.toJSONString("格式不正确");
		}
	}
	
	@RequestMapping("/search")
	@ResponseBody
	public Object search(HttpServletRequest req){
		Page page=new Page();
		String search=req.getParameter("search");
		System.out.println("搜索词"+search);
		phone.getcount(page, search);
		
		if(req.getParameter("pageSize") !=null){
			page.setPageSize(Integer.valueOf(req.getParameter("pageSize")));
		}
		
		if(req.getParameter("currentPage")==null||"".equals(req.getParameter("currentPage"))){
			System.out.println("我进的1");
			page.setNowPage(1);
		}else if(Integer.valueOf(req.getParameter("currentPage"))>page.getTotalPage()){
			page.setNowPage(page.getTotalPage());
			System.out.println("我进的2");
		}else if(Integer.valueOf(req.getParameter("currentPage"))<1){
			page.setNowPage(1);
			System.out.println("我进的3");
		}else{
			page.setNowPage(Integer.valueOf(req.getParameter("currentPage")));
			System.out.println("我进的4");
		}
		
		phone.select(page, search);
		System.out.println(page);
		return JSON.toJSON(page);  
	}
	
	
}
