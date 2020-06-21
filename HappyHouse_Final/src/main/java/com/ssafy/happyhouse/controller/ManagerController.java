package com.ssafy.happyhouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.model.dto.Manager;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.dto.UserPageBean;
import com.ssafy.happyhouse.model.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	ManagerService managerService;
	
	@GetMapping(value="/userList")
	public String managerPage() {
		return "jsp/manager";
	}
	
	@GetMapping(value="/manager/list")
	public @ResponseBody List<Manager> list(){
		return managerService.getList();
	}
	
	@GetMapping(value="/manager/list/{no}")
	public User detail(@PathVariable int no, @RequestBody UserPageBean userPageBean){
		User user = managerService.getUserData(userPageBean);
		System.out.println(user);
		return user;
	}
}
 