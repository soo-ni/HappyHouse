package com.ssafy.happyhouse.util;

public class News {
	public String title; //기사제목
	public String address; // 기사 주소 url
	public String createdDate; // 기사 날짜
	public String content; // 기사 내용 
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "News [title=" + title + ", address=" + address + ", createdDate=" + createdDate + ", content=" + content
				+ "]";
	}
	
}
