package com.ssafy.happyhouse.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.QnA;
@Mapper
public interface QnAMapper {
	public List<QnA> selectQnA();
	public QnA detailQnA(int no);
	public int writeQnA(QnA dto);
	public int updateQnA(QnA dto);
	public int deleteQnA(int no);
	public int updateReply(QnA dto);
	public int deleteReply(QnA dto);
	public List<QnA> retrieveQnAPage(@Param("offset") int offset, @Param("limit") int limit);
	public int totalQnA();
}
