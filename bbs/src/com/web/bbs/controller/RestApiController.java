package com.web.bbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.web.bbs.service.MemberService;

@RestController
public class RestApiController {
	
	//사용자 서비스를 주입받는다.
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/member/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		
		boolean chk = memberService.checkUserIdExist(user_id);
		
		return chk + "";
	}
	

}
