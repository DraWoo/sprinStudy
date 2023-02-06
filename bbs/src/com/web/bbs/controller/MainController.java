package com.web.bbs.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	/**
	 * =게시판 메인페이지
	 * @param request
	 * @param response
	 * @param vo
	 * @return
	 */
	
	@RequestMapping(value="/index")
	public ModelAndView main (HttpServletRequest request, HttpServletResponse response,@RequestParam Map<String, Object> vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index");
		return mav;
		
	}
	
	//ajax로 컨트롤단에서 받을때 예제
	/*
	 * @RequestMapping(value="/post/insertBbs") public ModelAndView PostMappingTest
	 * (@RequestParam Map<String, Object> vo) {
	 * System.out.println("Vo : "+vo.toString());
	 * 
	 * ModelAndView mav = new ModelAndView(); //출력결과 [no=1, id=devmk] return mav; }
	 */

}
