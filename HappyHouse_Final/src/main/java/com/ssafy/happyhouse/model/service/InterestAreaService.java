package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.dto.InterestArea;

public interface InterestAreaService {

    public List<String> search(String uid) ;
	
	public int delete(String uid, String dong);
	
	public int add(String uid, String dong );
}
