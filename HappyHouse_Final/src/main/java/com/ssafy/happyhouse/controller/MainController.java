package com.ssafy.happyhouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	// 홈으로 이동 -- 테스트용 mainNew 원래는 main
	@GetMapping(value="/")
	public String happyhouse() {
		return "main";
	}
 
	// 로그인 페이지로 이동
	@GetMapping(value="/loginPage")
	public String loginPage() {
		return "jsp/login";
	}
	 
	// 회원가입 페이지로 이동
	@GetMapping(value="/signupPage")
	public String signupPage() {
		return "jsp/signup";
	}

	// id, pw 찾는 페이지로 이동
	@GetMapping(value="/findPage")
	public String findPage() {
		return "jsp/find";
	}
	
	// 마이 페이지로 이동
	@GetMapping(value="/myPage")
	public String userPage() {
		return "myPage/mypage";
	}
		
	// 부동산 페이지로 이동
	@GetMapping(value="/mapPage")
	public String mapPage() {
		return "house/map";
	}
	
	//주택관련기사 로 이동
	@GetMapping(value="/articlePage")
	public String articlePage(){
		return "article/article";
	}
}
