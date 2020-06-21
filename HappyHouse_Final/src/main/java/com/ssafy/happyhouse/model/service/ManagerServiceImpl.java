package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.ManagerMapper;
import com.ssafy.happyhouse.model.dto.Manager;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.dto.UserPageBean;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerMapper managerMapper;
	

	@Override
	public List<Manager> getList() {
		return managerMapper.getList();
	}

	@Override
	public boolean setDate(String id, int count) {
		return managerMapper.setDate(id, count);
	}

	@Override
	public int regData(String id) { 
		return managerMapper.regData(id);
	}

	@Override
	public int getCount(String id) {
		return managerMapper.getCount(id);
	}

	@Override
	public boolean delete(String id) {
		return managerMapper.delete(id);
	}

	@Override
	public User getUserData(UserPageBean userPageBean) {
		return managerMapper.getUserData(userPageBean);
	}
	
}
