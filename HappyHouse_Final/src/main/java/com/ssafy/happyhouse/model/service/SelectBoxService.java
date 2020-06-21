package com.ssafy.happyhouse.model.service;

import java.util.ArrayList;

import com.ssafy.happyhouse.model.dto.DongCode;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HouseInfo;
import com.ssafy.happyhouse.model.dto.SidoCodeDTO;

public interface SelectBoxService {

	ArrayList<SidoCodeDTO> selectSido() throws Exception;

	ArrayList<SidoCodeDTO> selectGugun(String sido) throws Exception;

	ArrayList<DongCode> selectDong(String gugun) throws Exception;
	
	ArrayList<HouseInfo> selectDongForApt(String gugun) throws Exception;

	ArrayList<HouseDeal> selectApt(String dong) throws Exception;

}
