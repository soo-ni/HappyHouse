package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.HappyHouseException;
import com.ssafy.happyhouse.mapper.HouseInfoMapper;
import com.ssafy.happyhouse.model.dto.HouseInfo;
@Service
public class HouseInfoServiceImpl implements HouseInfoService {

	@Autowired
	HouseInfoMapper houseInfoMapper;


	/** HouseInfo DB에 위도 경도 입력하기 위해서 등록된 모든 집의 동과 지번을 추출한다. */
	@Override
	public List<HouseInfo> searchAllHouseInfo() {
		//////// *나중에구현*///////////
		try {
			List<HouseInfo> list = null;
			list =houseInfoMapper.searchAllHouseInfo();
			if(list!=null) {
				return list;
			}else {
				throw new HappyHouseException("주택 정보 조회중 오류 발생.");
			}
		} catch (SQLException e) {
			System.out.println("문제있다");
			e.printStackTrace();
			throw new HappyHouseException("주택정보 검색중 오류발생");
		}
		
	}

	/** HouseInfo 번호로 검색 */
	@Override
	public HouseInfo search(int no) {
		HouseInfo houseInfo = null;
		try {
			houseInfo = houseInfoMapper.search(no);
			if(houseInfo!=null) {
			return houseInfo;
			}else {
				throw new HappyHouseException("주택 정보 조회중 오류 발생.");
			}
		} catch (SQLException e) {

			throw new HappyHouseException("주택정보 검색중 오류발생");
		}
	}

	@Override
	/** HouseInfo 아파트 이름으로 검색 */
	public HouseInfo searchAptName(String aptname) {
		HouseInfo houseInfo = null;
		System.out.println(aptname);
		try {
			if(aptname!=null&&aptname.trim().equals("")) {
				
				houseInfo = houseInfoMapper.searchAptName(aptname);
				System.out.println(houseInfoMapper.searchAptName(aptname));
			}
			if(houseInfo==null) {
				throw new HappyHouseException("주택 정보 조회중 오류 발생.");
				
			}else {
			}
		} catch (SQLException e) {
			throw new HappyHouseException("주택정보 검색중 오류발생");
		}
		return houseInfo;
		
	}


}
