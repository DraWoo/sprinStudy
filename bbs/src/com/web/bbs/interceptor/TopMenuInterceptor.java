package com.web.bbs.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import com.web.bbs.beans.TbInfoTable;
import com.web.bbs.service.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor{

	@Autowired
	private TopMenuService topMenuService;
	/*interceptor에서는 생성자 주입받으면 nullpoint 뜨기때문에 직접 생성자를 주입해줘야 한다. java설정애서는 안되지만. xml설정해서는 주입을 받을수 있다.
	 * public TopMenuInterceptor(TopMenuService topMenuService) {
	 * this.topMenuService = topMenuService; }
	 */
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		List<TbInfoTable> topMenuList = topMenuService.getTopMenuList();
		request.setAttribute("topMenuList", topMenuList);
		
		//다음 단계로 나아갈 수 있도록 true 해준다.
		return true;
	}
}
