package com.web.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bbs.beans.TbMember;
/**
 * 사용자 로그인을 위한 컨틀롤러
 * @author DragonWoo
 *
 */
@Controller
@RequestMapping(value="/user")
public class UserController {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	/*
	 * ModelAndView 방식
	 * @RequestMapping(value="/lgn") public ModelAndView lgn(HttpServletRequest
	 * request,HttpServletResponse response) { ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("user/lgn"); return mav; }
	 * 
	 * @RequestMapping(value="/lgnout") public ModelAndView
	 * lgnout(HttpServletRequest repuest,HttpServletResponse response) {
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("user/lgnout"); return
	 * mav; }
	 */
	
	//리턴타입 String
	@GetMapping(value="/lgn")
	public String join(@ModelAttribute("joinTbMember")TbMember memberBean) {
		return "user/lgn";
	}
	@GetMapping(value="/join")
	public String lgn(HttpServletRequest request,HttpServletResponse response) {
		return "user/join";
	}
	@RequestMapping(value="/lgnout")
	public String lgnout(HttpServletRequest repuest,HttpServletResponse response) {
		return "user/lgnout";
	}

}
