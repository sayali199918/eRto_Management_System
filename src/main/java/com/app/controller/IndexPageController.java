package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexPageController {

	//default constructor
	public IndexPageController() {
		System.out.println(getClass().getName());
	}
	
	//Get method for showing index page
	@GetMapping("/")
	public ModelAndView showhomePage() {
		return new ModelAndView("/index");
	}
}
