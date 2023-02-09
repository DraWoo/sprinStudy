package com.web.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	@GetMapping(value="/lgnout")
	public String lgnout(HttpServletRequest repuest,HttpServletResponse response) {
		return "user/lgnout";
	}
	@GetMapping(value="/lgn")
	public String lgn(@ModelAttribute("joinTbMember")TbMember memberBean) {
		return "user/lgn";
	}
	
	//파라미터를 통해서 뷰단에서 넘어온 데이터를 받을 Bean을 설정해준다.
	/**
	 * @Valid 유효성 검사
	 * @ModelAttribute 빈을 주입받기위한 어노테이션
	 * BindingResult => 유효성 검사에 대한 결과값
	 * @return
	 */

	@PostMapping("join_pro") 
	public String joinPro(@Valid @ModelAttribute("joinTbMember")TbMember memberBean, BindingResult result) { 
		if(result.hasErrors()) {
			return "user/lgn";
		} 
		return "user/join_sucess"; }
	
}
