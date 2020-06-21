package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.BoardDto;

public interface BoardService {
	public int boardInsert(BoardDto dto);
	public int boardUpdate(BoardDto dto);
	public int boardDelete(int boardId);
	
	public BoardDto boardDetail(int boardId);
	
	public List<BoardDto> boardList();
	public int boardListTotalCnt();
	
	public List<BoardDto> boardListSearchWord(int limit, int offset, String searchWord);
	public int boardListSearchWordTotalCnt(String searchWord);
	public void boardUpdateReadCount(int boardId);
	public List<BoardDto> boardListPage(int limit, int offset);
}
