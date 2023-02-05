package com.web.bbs.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	private static final Logger log = Logger.getLogger(MainController.class);
	
	@RequestMapping(value="/board_main")
	public ModelAndView main() {
		log.debug("[-]boardmain 호출 Start[-]");
		ModelAndView mav = new ModelAndView("board/board_main");
		return mav;
	}

}
