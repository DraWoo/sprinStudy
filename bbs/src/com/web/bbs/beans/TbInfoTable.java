package com.web.bbs.beans;

/**
 * DB 데이터를 주입받기 위한 클래스
 * @author DragonWoo
 *TbInfoTable 테이블 
 *4개의 게시판의 인덱스를 쿼리파라미터로 넘겨서 idx로 해당 게시판을 호출하기 위한 용도
 */


public class TbInfoTable {
	private int tb_info_idx;
	private String tb_info_name;
	
	public int getTb_info_idx() {
		return tb_info_idx;
	}
	public void setTb_info_idx(int tb_info_idx) {
		this.tb_info_idx = tb_info_idx;
	}
	public String getTb_info_name() {
		return tb_info_name;
	}
	public void setTb_info_name(String tb_info_name) {
		this.tb_info_name = tb_info_name;
	}
	
	
}
