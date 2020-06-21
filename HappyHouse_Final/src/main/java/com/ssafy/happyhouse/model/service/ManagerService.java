package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.Manager;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.dto.UserPageBean;

public interface ManagerService {

	public List<Manager> getList();
	public User getUserData(UserPageBean userPageBean);
	public boolean setDate(String id, int count);
	public int regData(String id);
	public int getCount(String id);
	public boolean delete(String id);
}
 