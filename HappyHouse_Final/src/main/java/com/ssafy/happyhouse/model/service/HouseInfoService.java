package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.HouseInfo;

public interface HouseInfoService {

	/**HouseInfo DB에 위도 경도 입력하기 위해서  등록된 모든 집의 동과 지번을 추출한다.  */
	public List<HouseInfo> searchAllHouseInfo() ;
	
	/** HouseInfo 번호로 검색 */
	public HouseInfo search(int no); 
	
	/** HouseInfo 아파트 이름으로 검색 */
	public HouseInfo searchAptName(String aptname);


}
