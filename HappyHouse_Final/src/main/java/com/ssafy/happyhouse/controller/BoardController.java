package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.mapper.BoardMapper;
import com.ssafy.happyhouse.model.dto.BoardDto;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/board")
public class BoardController {
	
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	BoardMapper boardMapper;
	
	@GetMapping
	public @ResponseBody List<BoardDto> boardList(){
		return boardMapper.boardList();
	}
	
	@PostMapping("/page")
	public ResponseEntity<List<BoardDto>> boardListPage(@RequestBody Map<String, String> map){
		System.out.println(map.toString());
		int offset = Integer.parseInt(map.get("offset"));
		int limit = Integer.parseInt(map.get("limit"));
		System.out.println(offset+" "+limit);
		return new ResponseEntity<List<BoardDto>>(boardMapper.boardListPage(limit, offset), HttpStatus.OK);
	}
	
	@GetMapping("/total")
	public ResponseEntity<Map<String, Integer>> boardListTotalCnt(){
		Map<String, Integer> map = new HashMap<String, Integer>();
	    map.put("totalCnt", boardMapper.boardListTotalCnt());
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	@PostMapping
	public int insert(@RequestBody BoardDto dto) {
		System.out.println(dto.toString());
		return boardMapper.boardInsert(dto);
	}
	
	@PutMapping("{boardId}")
	public int update(@PathVariable int boardId, @RequestBody BoardDto dto) {
		System.out.println(dto.toString());
		return boardMapper.boardUpdate(dto);
	}
	
	@DeleteMapping("{boardId}")
	public int delete(@PathVariable int boardId) {
		return boardMapper.boardDelete(boardId);
	}
	
	@GetMapping("{boardId}")
	public BoardDto detail(@PathVariable int boardId) {
		boardMapper.boardUpdateReadCount(boardId);
		return boardMapper.boardDetail(boardId);
	}
	
}
