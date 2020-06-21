package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.StoreInfo;

public interface StoreInfoService {
	
	/** 모든 상권정보 리스트 */
	public List<StoreInfo> searchAllStoreInfo() ;

	/** 상권 정보 추가 */
	public void insertStoreInfo(StoreInfo storeinfo);

	/** 상권 정보 업데이트 */
	public void updateStoreInfo(StoreInfo storeinfo);
	
	/** 상권 식별번호로 삭제 */
	public void deleteStoreInfo(int no);
	
	/** 상권 식별번호로 검색 */
	public StoreInfo searchDetail(int no); 
	
	/** 관심지역으로 조회 */
	public List<StoreInfo> search(String dong);
	
	/** 대분류, 중분류 , 소분류로 조회 */
	public List<StoreInfo> searchAllByCodeName(String codename1, String codename2, String codename3);

	/** 서치 정보와 일치하는 상권정보 리스트 */
	public List<StoreInfo> searchAll(String dong, String shopname, int currentPage);
	
	/** 서치 정보와 일치하는 상권정보 개수 */
	public int storeTotal(String dong, String shopname);
}
