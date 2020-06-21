package com.ssafy.happyhouse.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.mapper.SelectBoxMapper;
import com.ssafy.happyhouse.model.dto.DongCode;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HouseInfo;
import com.ssafy.happyhouse.model.dto.SidoCodeDTO;

@RestController
public class MapController {
	
	@Autowired
	SelectBoxMapper selectBoxMapper;
	
	@GetMapping(value="/map/list")
	public ArrayList<SidoCodeDTO> selectSido() {
		try {
			return selectBoxMapper.selectSido();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping(value="/map/sido/{sido}")
	public ArrayList<SidoCodeDTO> selectGugun(@PathVariable String sido) {
		try {
			return selectBoxMapper.selectGugun(sido);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping(value="/map/gugun/{gugun}")
	public ArrayList<DongCode> selectDong(@PathVariable String gugun) {
		try {
			return selectBoxMapper.selectDong(gugun);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping(value="/map/dong/{gugun}")
	public ArrayList<HouseInfo> selectDongForApt(@PathVariable String gugun) {
		try {
			return selectBoxMapper.selectDongForApt(gugun);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping(value="/map/apt/{dong}")
	public ArrayList<HouseDeal> selectApt(@PathVariable String dong) {
		try {
			return selectBoxMapper.selectApt(" "+dong);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
