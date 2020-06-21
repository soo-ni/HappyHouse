package com.ssafy.happyhouse.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.dto.DongCode;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HouseInfo;
import com.ssafy.happyhouse.model.dto.SidoCodeDTO;

@Mapper
public interface SelectBoxMapper {
	ArrayList<SidoCodeDTO> selectSido() throws Exception;
	ArrayList<SidoCodeDTO> selectGugun(String sido) throws Exception;
	ArrayList<DongCode> selectDong(String gugun) throws Exception;
	ArrayList<HouseInfo> selectDongForApt(String gugun) throws Exception;
	ArrayList<HouseDeal> selectApt(String dong) throws Exception;
}
