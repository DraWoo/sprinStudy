package com.web.bbs.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.web.bbs.beans.TbMember;
/**
 * 비밀번호와 비밀번호확인을 위한 유효성 검사
 * @author DragonWoo
 *
 */
public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return TbMember.class.isAssignableFrom(clazz);
	}

	
	//유효성 검사를 하기위한 메소드 
	@Override
	public void validate(Object target, Errors errors) {
		//형변환
		TbMember userBean = (TbMember)target;
		
		//비밀번호와 비밀번호확인이 같지 않다면 에러를 뱉어주기위한 조건문
		//NotEquals에 메시지는 error_message.properties에 셋팅해준다.
		if(userBean.getUser_pw().equals(userBean.getUser_pwChk()) == false) {
			errors.rejectValue("user_pw", "NotEquals");
			errors.rejectValue("user_pwChk", "NotEquals");
		}
	}
	

}
