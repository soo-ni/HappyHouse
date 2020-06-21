package com.ssafy.happyhouse.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.SelectBoxMapper;
import com.ssafy.happyhouse.model.dto.DongCode;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HouseInfo;
import com.ssafy.happyhouse.model.dto.SidoCodeDTO;

@Service
public class SelectBoxServiceImpl implements SelectBoxService {

	@Autowired
	SelectBoxMapper selectBoxMapper;
	
	@Override
	public ArrayList<SidoCodeDTO> selectSido() throws Exception {
		ArrayList<SidoCodeDTO> list = selectBoxMapper.selectSido();
		return list;
	}

	@Override
	public ArrayList<SidoCodeDTO> selectGugun(String sido) throws Exception {
		ArrayList<SidoCodeDTO> list = selectBoxMapper.selectGugun(sido);
		return list;
	}

	@Override
	public ArrayList<DongCode> selectDong(String gugun) throws Exception {
		ArrayList<DongCode> list = selectBoxMapper.selectDong(gugun);
		return list;
	}
	
	
	@Override
	public ArrayList<HouseInfo> selectDongForApt(String gugun) throws Exception {
		ArrayList<HouseInfo> list = selectBoxMapper.selectDongForApt(gugun);
		return list;
	}

	@Override
	public ArrayList<HouseDeal> selectApt(String dong) throws Exception {
		ArrayList<HouseDeal> list = selectBoxMapper.selectApt(dong);
		return list;
	}
	
}
