package com.ssafy.happyhouse.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.StoreInfo;

@Mapper
public interface StoreInfoMapper {

	/** 모든 상권정보 리스트 */
	public List<StoreInfo> searchAllStoreInfo() throws SQLException;

	/** 상권 정보 추가 */
	public void insertStoreInfo(StoreInfo storeinfo) throws SQLException;

	/** 상권 정보 업데이트 */
	public void updateStoreInfo(StoreInfo storeinfo) throws SQLException;
	
	/** 상권 식별번호로 삭제 */
	public void deleteStoreInfo(int no) throws SQLException;
	
	/** 상권 식별번호로 검색 */
	public StoreInfo searchDetail(@Param("no") int no) throws SQLException; 
	
	/** 관심지역으로 조회 */
	public List<StoreInfo> search(@Param("dong") String dong) throws SQLException;
	
	/** 대분류, 중분류 , 소분류로 조회 */
	public List<StoreInfo> searchAllByCodeName(String codename1, String codename2, String codename3) throws SQLException;
	
	/** 서치 정보와 일치하는 상권정보 리스트 */
	public List<StoreInfo> searchAll(@Param("dong") String dong, @Param("shopname") String shopname, @Param("currentPage") int currentPage);
	
	/** 서치 정보와 일치하는 상권정보 개수 */
	public int storeTotal(@Param("dong") String dong, @Param("shopname") String shopname);
}
