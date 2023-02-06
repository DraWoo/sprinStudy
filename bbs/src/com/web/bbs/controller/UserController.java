package com.web.bbs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user")
public class UserController {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
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
