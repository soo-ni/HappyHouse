package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.HappyHouseException;
import com.ssafy.happyhouse.mapper.EnvInfoMapper;
import com.ssafy.happyhouse.model.dto.EnvInfo;

@Service
public class EnvInfoServiceImpl implements EnvInfoService{
	
	@Autowired
	EnvInfoMapper envInfoMapper ; 

	
	@Override
	public EnvInfo searchByDong(String dong) {
		EnvInfo envInfo =null;
		try {
			 envInfo =envInfoMapper.searchByDong(dong);
			 if(envInfo==null) {
				 throw new HappyHouseException("해당지역의 환경정보가 없습니다.");
			 }
		} catch (SQLException e) {
			e.printStackTrace();
			throw new HappyHouseException("환경정보 검색중 오류 발생");
		}
		return envInfo;
	}

	
}
