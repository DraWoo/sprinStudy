package com.web.bbs.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//dao 만들때는 항상 repository를 만들어 준다.
@Repository
public class MemberDao {
	
	//SqlSessionTemplate 주입 받아서 사용한다.
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String checkUserIdExist(String user_id) {
		//해당 mapper에 user_id를 전달한다.
		return sqlSessionTemplate.selectOne("member.checkUserIdExist", user_id);
	}

}
