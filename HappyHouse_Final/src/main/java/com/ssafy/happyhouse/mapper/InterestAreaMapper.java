package com.ssafy.happyhouse.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface InterestAreaMapper {
	
	public List<String> search(@Param(value = "uid") String uid) throws SQLException;
	
	public int delete(@Param(value = "uid")String uid, @Param(value = "dong")String dong);
	
	public int add(@Param(value = "uid")String uid, @Param(value = "dong")String dong );

}
