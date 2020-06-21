package com.ssafy.happyhouse.model.dto;

import java.util.Date;
import java.util.List;

public class BoardDto {
	private int boardId;
	private String userSeq;
	private String title;
	private String content;
	private Date regDt;
	private int readCount;

	//private List<BoardFileDto> fileList;

	public BoardDto() {};
	public BoardDto(String userSeq, String title, String content) {
		this.userSeq = userSeq;
		this.title = title;
		this.content = content;
	}
	
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDt() {
		return regDt;
	}
	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("[BoardDto - boardId : ");
		sb.append(this.boardId);
		sb.append(", userSeq : ");
		sb.append(this.userSeq);
		sb.append(", title : ");
		sb.append(this.title);
		sb.append(", content : ");
		sb.append(this.content);
		sb.append(", regDt : ");
		sb.append(this.regDt);
		sb.append(", readCount : ");
		sb.append(this.readCount);
		sb.append("]");
		
		return sb.toString();
	}
}

