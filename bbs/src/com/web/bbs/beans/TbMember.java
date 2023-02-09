package com.web.bbs.beans;

import java.time.LocalDate;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * member table 데이터 주입받기
 * @author DragonWoo
 * 사용자 정보 테이블
 */
public class TbMember {
	
	//유효성 검사 DB에서 값을 체크해서 getter,setter을 해준다.
	//@Size(min=2, max=4)
	//정규식도 셋팅
	private int user_idx;
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_id;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pwChk;
	
	@Size(min=2, max=4)
	@Pattern(regexp ="[가-힣]*") //한글만 입력 받는 정규식 표현
	private String user_name;
	private String user_nick;
	private String user_email;
	private String user_phone;
	private String user_gender;
	private String user_gegdate;
	private String user_createdate;
	private String user_updatedate;
	
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_pwChk() {
		return user_pwChk;
	}
	public void setUser_pwChk(String user_pwChk) {
		this.user_pwChk = user_pwChk;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_gegdate() {
		return user_gegdate;
	}
	public void setUser_gegdate(String user_gegdate) {
		this.user_gegdate = user_gegdate;
	}
	public String getUser_createdate() {
		return user_createdate;
	}
	public void setUser_createdate(String user_createdate) {
		this.user_createdate = user_createdate;
	}
	public String getUser_updatedate() {
		return user_updatedate;
	}
	public void setUser_updatedate(String user_updatedate) {
		this.user_updatedate = user_updatedate;
	}
	

}
