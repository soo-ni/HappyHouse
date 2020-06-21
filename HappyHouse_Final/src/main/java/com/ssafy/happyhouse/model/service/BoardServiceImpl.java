package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.BoardMapper;
import com.ssafy.happyhouse.model.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public int boardInsert(BoardDto dto) {
		return boardMapper.boardInsert(dto);
	}

	@Override
	public int boardUpdate(BoardDto dto) {
		return boardMapper.boardUpdate(dto);
	}

	@Override
	public int boardDelete(int boardId) {
		return boardMapper.boardDelete(boardId);
	}

	@Override
	public BoardDto boardDetail(int boardId) {
		return boardMapper.boardDetail(boardId);
	}

	@Override
	public List<BoardDto> boardList() {
		return boardMapper.boardList();
	}

	@Override
	public int boardListTotalCnt() {
		return boardMapper.boardListTotalCnt();
	}

	@Override
	public List<BoardDto> boardListSearchWord(int limit, int offset, String searchWord) {
		return boardMapper.boardListSearchWord(limit, offset, searchWord);
	}

	@Override
	public int boardListSearchWordTotalCnt(String searchWord) {
		return boardMapper.boardListSearchWordTotalCnt(searchWord);
	}
	
	@Override
	public List<BoardDto> boardListPage(int limit, int offset) {
		return boardMapper.boardListPage(limit, offset);
	}

	@Override
	public void boardUpdateReadCount(int boardId) {
		boardMapper.boardUpdateReadCount(boardId);
	}
	
}
