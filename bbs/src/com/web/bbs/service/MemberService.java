package com.web.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bbs.dao.MemberDao;

@Service
public class MemberService {
	
	//mapper에 user_id를 설정한 dao를 주입받는다.
	@Autowired
	private MemberDao memberDao;
	
	public boolean checkUserIdExist(String user_id) {
		String user_name = memberDao.checkUserIdExist(user_id);
		
		//사용자의 이름이 존재하는지 여부를 판단
		if(user_name == null) {
			return true;
		}else {
			return false;
		}
	}

}
