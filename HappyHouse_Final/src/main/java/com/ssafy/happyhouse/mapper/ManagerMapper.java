package com.ssafy.happyhouse.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.dto.Manager;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.dto.UserPageBean;

@Mapper
public interface ManagerMapper {
	public List<Manager> getList();

	public boolean setDate(String id, int count);

	public int regData(String id);
	
	public int getCount(String id);
	
	public boolean delete(String id);

	public User getUserData(UserPageBean userPageBean);
} 
