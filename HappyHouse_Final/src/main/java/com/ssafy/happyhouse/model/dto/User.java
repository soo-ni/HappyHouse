package com.ssafy.happyhouse.model.dto;

/*
CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uaddress` varchar(50) DEFAULT NULL,
  `uphone` varchar(50) DEFAULT NULL,
  `upassword` varchar(100) DEFAULT NULL,
  `uquestion` varchar(45) DEFAULT NULL,
  `uanswer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

 */

public class User {
	private String uid;
	private String uname;
	private String city;
	private String detailaddress;
	private String uaddress;
	private String pnum1;
	private String pnum3;
	private String pnum2;
	private String uphone;
	private String upassword;
	private String uquestion;
	private String uanswer;
	
	public User () {}

	public User(String uid, String uname, String city, String detailaddress, String uaddress, String pnum1,
			String pnum3, String pnum2, String uphone, String upassword, String uquestion, String uanswer) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.city = city;
		this.detailaddress = detailaddress;
		this.uaddress = uaddress;
		this.pnum1 = pnum1;
		this.pnum3 = pnum3;
		this.pnum2 = pnum2;
		this.uphone = uphone;
		this.upassword = upassword;
		this.uquestion = uquestion;
		this.uanswer = uanswer;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDetailaddress() {
		return detailaddress;
	}

	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getPnum1() {
		return pnum1;
	}

	public void setPnum1(String pnum1) {
		this.pnum1 = pnum1;
	}

	public String getPnum3() {
		return pnum3;
	}

	public void setPnum3(String pnum3) {
		this.pnum3 = pnum3;
	}

	public String getPnum2() {
		return pnum2;
	}

	public void setPnum2(String pnum2) {
		this.pnum2 = pnum2;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUquestion() {
		return uquestion;
	}

	public void setUquestion(String uquestion) {
		this.uquestion = uquestion;
	}

	public String getUanswer() {
		return uanswer;
	}

	public void setUanswer(String uanswer) {
		this.uanswer = uanswer;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", city=" + city + ", detailaddress=" + detailaddress
				+ ", uaddress=" + uaddress + ", pnum1=" + pnum1 + ", pnum3=" + pnum3 + ", pnum2=" + pnum2 + ", uphone="
				+ uphone + ", upassword=" + upassword + ", uquestion=" + uquestion + ", uanswer=" + uanswer + "]";
	}
	
	
}
