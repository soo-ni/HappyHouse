package com.ssafy.happyhouse.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HousePageBean;


@Mapper 
public interface HouseMapper {	
		
	public List<HouseDeal> searchAll(@Param(value = "currentPage") int currentPage,@Param(value = "sizePerPage") int sizePerPage, @Param(value = "bean") HousePageBean  bean) throws SQLException;
	public HouseDeal search(@Param(value = "no") int no) throws SQLException;
	public HouseDeal searchApt(@Param(value = "no") int no, @Param(value = "dong") String dong, @Param(value = "aptName") String aptName);
//	public int houseDealTotal(HousePageBean housePageBean);
	public int houseDealTotal(@Param(value = "bean") HousePageBean housePageBean);
	public int houseDealTotal1(@Param(value = "bean") HousePageBean housePageBean);
	public int houseDealTotal2(@Param(value = "bean") HousePageBean housePageBean);
	public int houseDealTotal3(@Param(value = "bean") HousePageBean housePageBean);
//	public int getTotalCount(HousePageBean bean) throws SQLException;
}
