package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.InterestAreaMapper;
@Service
public class InterestAreaServiceImpl implements InterestAreaService{
	
	@Autowired
	InterestAreaMapper interestAreaMapper;
	
	@Override
	public List<String> search(String uid) {
		List<String> list = new LinkedList<>();
		try {
			list =interestAreaMapper.search(uid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(list==null) {
			System.out.println(uid+"회원의 관심지역이 없습니다.");
		}
		return list;
	}

	@Override
	public int delete(String uid, String dong) {
		return interestAreaMapper.delete(uid, dong);
	}

	@Override
	public int add(String uid, String dong) {
		
			return interestAreaMapper.add(uid, dong);
			
	}

}
