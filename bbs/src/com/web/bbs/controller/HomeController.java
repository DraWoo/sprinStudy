package com.web.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home() {
//		System.out.println("home");
//		return "index";
//	}
	
	 private Logger log = Logger.getLogger(HomeController.class);
	
	
	@RequestMapping(value="/")
	public ModelAndView home (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("msg", "컨트롤에서 뷰단으로 데이터 넘기기");
		return mav;
	}
}
