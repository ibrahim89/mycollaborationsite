package com.zeedle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zeedle.service.BlogService;

@Controller
public class MyController {
	@Autowired	(required=true)
	private BlogService blogService;
	@RequestMapping("/")
	public String getHome(){
		return "index";
	}
	
	@RequestMapping("/blogview{blogId}")
	public String view(@PathVariable("blogId") int blogId, Model model){
		System.out.println("view");
		model.addAttribute("blog",this.blogService.getView(blogId));
		model.addAttribute("blogList",this.blogService.getAllBlog());
		return "view_blog";
	}
	
	
	

	}