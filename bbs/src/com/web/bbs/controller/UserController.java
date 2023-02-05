package com.web.bbs.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user")
public class UserController {
	private static Logger log = Logger.getLogger(UserController.class);
	
	@RequestMapping(value="/lgn")
	public ModelAndView lgn() {
		ModelAndView mav = new ModelAndView("user/lgn");
		return mav;
		}
	@RequestMapping(value="/lgnout")
	public ModelAndView lgnout() {
		ModelAndView mav = new ModelAndView("user/lgnout");
		return mav;
	}

}
