package com.ssafy.happyhouse.model.service;

import java.util.ArrayList;

import com.ssafy.happyhouse.model.dto.InterestHouseDeal;
import com.ssafy.happyhouse.model.dto.User;

public interface UserService {
	public int userInsert(User dto);
	public int userUpdate(User dto);
	public int userDelete(String id);
	public User logIn(String id, String pwd);
	public String getInteresting(String id);
	public boolean setInteresting(String id, String interesting, int how);
	
	public User userIdSearch(String uname, String uphone);
	public User userPWSearch(String uid, String uname, String uphone);
	public boolean inteDelete(String uid);
	
	public ArrayList<InterestHouseDeal> getInterestHouseDeal(String uid);
	public int insertInterestHouseDeal(String uid, int no);
	public int deleteInterestHouseDeal(String uid, int no);
}
