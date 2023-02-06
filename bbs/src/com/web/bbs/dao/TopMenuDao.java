package com.web.bbs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bbs.beans.TbInfoTable;

@Repository
public class TopMenuDao {
	//dispacher-dervlet에서 bean에 sqlsessionTemplate를 주입받는다.
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<TbInfoTable> getTopMenuList(){
		//mapper 에 namespace 에 topmenu와 id값 get_topmenu_list를 넣어주면 된다.
		List<TbInfoTable> topMenuList = sqlSessionTemplate.selectList("topmenu.get_topmenu_list");
		return topMenuList;
	}
	
}
