package com.ssafy.happyhouse.model.dto;

public class InterestHouseDeal {
	
	private String uid;
	private int no;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "InterestHouseDeal [uid=" + uid + ", no=" + no + "]";
	}
}
