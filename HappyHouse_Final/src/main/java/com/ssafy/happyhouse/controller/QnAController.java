package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.dto.QnA;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.service.QnAService;

import io.swagger.annotations.ApiOperation;

//http://localhost:9999/happyhouse/swagger-ui.html
@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/qna")
public class QnAController {

	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private QnAService qnaService;

    @ApiOperation(value = "모든 질문 게시판 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<QnA>> retrieveQnA() throws Exception {
		logger.debug("retrieveQnA - 호출");
		return new ResponseEntity<List<QnA>>(qnaService.retrieveQnA(), HttpStatus.OK);
	}
    
    @ApiOperation(value = "모든 질문 게시판 정보를 반환한다.", response = List.class)
	@PostMapping("/page")
	public ResponseEntity<List<QnA>> retrieveQnAPage(@RequestBody Map<String, String> map) throws Exception {
		logger.debug("retrieveQnAPage - 호출");
		System.out.println(map.toString());
		int offset = Integer.parseInt(map.get("offset"));
		int limit = Integer.parseInt(map.get("limit"));
		System.out.println(offset+" "+limit);
		return new ResponseEntity<List<QnA>>(qnaService.retrieveQnAPage(offset, limit), HttpStatus.OK);
	}
    
    @ApiOperation(value = "글번호에 해당하는 게시글의 정보를 반환한다.", response = QnA.class)    
    @GetMapping("/total")
    public ResponseEntity<Map<String, Integer>> totalQnA() {
       logger.debug("detailQnA - 호출");
       Map<String, Integer> map = new HashMap<String, Integer>();
       map.put("totalCnt", qnaService.totalQnA());
       return new ResponseEntity<>(map, HttpStatus.OK);
    }
    
    @ApiOperation(value = "글번호에 해당하는 게시글의 정보를 반환한다.", response = QnA.class)    
    @GetMapping("{no}")
    public ResponseEntity<QnA> detailQnA(@PathVariable int no) {
       logger.debug("detailQnA - 호출");
       return new ResponseEntity<QnA>(qnaService.detailQnA(no), HttpStatus.OK);
    }

	@ApiOperation(value = "새로운 게시글 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
    @PostMapping
    public ResponseEntity<String> writeQnA(@RequestBody QnA QnA) {
       logger.debug("writeQnA - 호출");
       if (qnaService.writeQnA(QnA)==1) {
          return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
       }
       return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }

	@ApiOperation(value = "글번호에 해당하는 게시글의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
    @PutMapping("{no}")
    public ResponseEntity<String> updateQnA(@RequestBody QnA QnA) {
       logger.debug("updateQnA - 호출");
       logger.debug("" + QnA);
       
       if (qnaService.updateQnA(QnA)==1) {
          return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
       }
       return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }

	@ApiOperation(value = "글번호에 해당하는 게시글의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
    @DeleteMapping("{no}")
    public ResponseEntity<String> deleteQnA(@PathVariable int no) {
       logger.debug("deleteQnA - 호출");
       if (qnaService.deleteQnA(no)==1) {
          return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
       }
       return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }
	
	@ApiOperation(value = "글번호에 해당하는 답변의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
    @PutMapping("/reply/{no}")
    public ResponseEntity<String> updateReply(@RequestBody QnA QnA) {
       logger.debug("updateReply - 호출");
       logger.debug("" + QnA);
       
       if (qnaService.updateReply(QnA)==1) {
          return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
       }
       return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }
	
	@ApiOperation(value = "글번호에 해당하는 답변의 정보를 삭제한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
    @PutMapping("/reply/delete/{no}")
    public ResponseEntity<String> deleteReply(@RequestBody QnA QnA) {
       logger.debug("updateReply - 호출");
       logger.debug("" + QnA);
       System.out.println(QnA.toString());
       if (qnaService.deleteReply(QnA)==1) {
          return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
       }
       return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }

	@ApiOperation(value = "현재 사용자 세션 정보를 제공한다.", response = String.class)
    @PostMapping("/uid")
    public ResponseEntity<String> getID(HttpSession session) {
		System.out.println("세션호출");
    	User user = (User) session.getAttribute("user");
//    	System.out.println(user.toString());
    	logger.debug("getID - 호출");
//    	if (user != null) {	//board에서 오류나서 일단 고침
//    		System.out.println(user.getUid());
    		String uid="";
    		if(user!=null) uid = user.getUid();
    		else uid = "guest";
    		if(!uid.equals(""))	return new ResponseEntity<String>(uid, HttpStatus.OK);
//    	}
    	return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }
	
}