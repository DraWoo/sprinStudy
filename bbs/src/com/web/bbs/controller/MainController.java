package com.web.bbs.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
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
	
	private static final Logger log = Logger.getLogger(MainController.class);
	
	@RequestMapping(value="/main")
	public ModelAndView main (HttpServletRequest request, HttpServletResponse response,@RequestParam Map<String, Object> vo) {
		System.out.println("Vo : "+vo.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		log.debug("[-][DEBUG][-]"+"["+mav+"]");
		
		return mav;
		
	}
	
	@RequestMapping(value="/post/insertBbs")
	public ModelAndView PostMappingTest (@RequestParam Map<String, Object> vo) {
	    System.out.println("Vo : "+vo.toString()); 
	    
	    ModelAndView mav = new ModelAndView();
	    //출력결과 [no=1, id=devmk]
	    return mav;
	}

}
