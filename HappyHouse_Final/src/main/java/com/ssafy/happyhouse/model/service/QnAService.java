package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.QnA;

public interface QnAService {
	public List<QnA> retrieveQnA();
	public QnA detailQnA(int no);
	public int writeQnA(QnA dto);
	public int updateQnA(QnA dto);
	public int deleteQnA(int no);
	public int updateReply(QnA dto);
	public int deleteReply(QnA dto);
	public List<QnA> retrieveQnAPage(int offset, int limit);
	public int totalQnA();
}
