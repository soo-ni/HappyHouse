package com.ssafy.happyhouse.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.InterestHouseDeal;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.service.HouseService;
import com.ssafy.happyhouse.model.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	HouseService houseDealService;
	
	@RequestMapping(value="user/signup")
	public @ResponseBody int signup(@RequestBody User dto, Model model, HttpSession session) {
		System.out.println(dto);
		return userService.userInsert(dto);
	} 
	
	@PostMapping(value="/user/login")
	public String login(String uid, String upassword, Model model, HttpSession session) {
		User user = userService.logIn(uid, upassword);
		 
		System.out.println(user);
		if(user==null) {
			model.addAttribute("loginfail", "아이디 비밀번호를 확인하세요.");
			return "/jsp/login";
		}else {
			if(uid.equals("admin")) session.setAttribute("admin", user);
	 		session.setAttribute("user", user);
			return "main";
		}
	}
	
	@PutMapping(value="/user/update/{uid}")
	public @ResponseBody int update(@PathVariable String uid, @RequestBody User dto , HttpSession session) {
		System.out.println(dto);
		session.setAttribute("user", dto);
		return userService.userUpdate(dto);
	}
	
	@RequestMapping(value="/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";
	}
	
	@PostMapping(value="/user/findId")
	public @ResponseBody User findId(@RequestBody User user, HttpSession session) {
		System.out.println(user.toString());
		String uname = user.getUname();
		String uphone = user.getUphone();
		System.out.println(uname+" "+uphone);
		return userService.userIdSearch(uname, uphone);
	}
	
	@PostMapping(value="/user/findPw")
	public @ResponseBody User findPw(@RequestBody User user, HttpSession session) {
		System.out.println(user.toString());
		String uid = user.getUid();
		String uname = user.getUname();
		String uphone = user.getUphone();
		User rUser = userService.userPWSearch(uid, uname, uphone);
		System.out.println(rUser.toString());
		return userService.userPWSearch(uid, uname, uphone);
	}
	
	@GetMapping(value="/user/likedList")
	public @ResponseBody ArrayList<InterestHouseDeal> findLiked(HttpSession session){
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		if(uid==null) {
			return null;
		}else {
			return userService.getInterestHouseDeal(uid);
		}
	}
	
	
	@GetMapping(value="/user/likedList/houseinfo")
	public @ResponseBody ArrayList<HouseDeal> likedlisthouseinfo(HttpSession session,ArrayList<InterestHouseDeal> listNo,
			 ArrayList<HouseDeal> houseDealList){
		
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		if(uid==null) {
			return null;
		}else {
			listNo= userService.getInterestHouseDeal(uid);
			houseDealList = new ArrayList<HouseDeal>();
			for (int i = 0; i < listNo.size(); i++) {
				houseDealList.add(houseDealService.search(listNo.get(i).getNo()));
			}
			return houseDealList;
			 
		}
	
	}
	
	@PostMapping(value="/user/liked/{no}")
	public @ResponseBody int insertLiked(@PathVariable int no, HttpSession session){
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		System.out.println(uid);
		return userService.insertInterestHouseDeal(uid, no);
	}
	
	@DeleteMapping(value="/user/liked/{no}")
	public @ResponseBody int deleteLiked(@PathVariable int no, HttpSession session){
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		return userService.deleteInterestHouseDeal(uid, no);
	}
}
