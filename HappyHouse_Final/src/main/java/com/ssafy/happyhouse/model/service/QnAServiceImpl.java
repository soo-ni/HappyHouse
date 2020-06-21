package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.QnAMapper;
import com.ssafy.happyhouse.model.dto.QnA;

@Service
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnAMapper dao;
	
	@Override
	public List<QnA> retrieveQnA() {
		return dao.selectQnA();
	}

	@Override
	public QnA detailQnA(int no) {
		return dao.detailQnA(no);
	}

	@Override
	public int writeQnA(QnA dto) {
		return dao.writeQnA(dto);
	}

	@Override
	public int updateQnA(QnA dto) {
		return dao.updateQnA(dto);
	}

	@Override
	public int deleteQnA(int no) {
		return dao.deleteQnA(no);
	}

	@Override
	public int updateReply(QnA dto) {
		return dao.updateReply(dto);
	}

	@Override
	public int deleteReply(QnA dto) {
		return dao.deleteReply(dto);
	}

	@Override
	public List<QnA> retrieveQnAPage(int offset, int limit) {
		return dao.retrieveQnAPage(offset, limit);
	}
	
	@Override
	public int totalQnA() {
		return dao.totalQnA();
	}

}
