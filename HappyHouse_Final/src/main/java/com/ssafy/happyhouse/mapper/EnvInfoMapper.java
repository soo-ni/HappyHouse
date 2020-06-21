package com.ssafy.happyhouse.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.EnvInfo;
@Mapper
public interface EnvInfoMapper {
	
	public EnvInfo searchByDong(@Param(value = "dong") String dong) throws SQLException;

}
