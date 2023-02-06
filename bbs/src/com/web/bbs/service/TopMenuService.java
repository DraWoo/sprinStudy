package com.web.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bbs.beans.TbInfoTable;
import com.web.bbs.dao.TopMenuDao;

//dao 메소드를 호출해서 다시 return 해준다.
//컨트롤러에서 해당 서비스를 주입받으면 된다.
@Service
public class TopMenuService {
	
	//dao 를 주입받아서 topMenuList로 반환해준다.
	@Autowired 
	private TopMenuDao topMenuDao;
	
	public List<TbInfoTable> getTopMenuList(){
		List<TbInfoTable> topMenuList = topMenuDao.getTopMenuList();
		return topMenuList;

	}
}