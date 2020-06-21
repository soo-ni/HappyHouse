package com.ssafy.happyhouse.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.happyhouse.model.dto.InterestHouseDeal;
import com.ssafy.happyhouse.model.dto.User;

@Mapper
public interface UserMapper {
	public int userInsert(User dto) throws SQLException;
	public int userUpdate(User dto) throws SQLException;
	public int userDelete(String uid)throws SQLException;
	public User logIn(@Param("uid") String uid , @Param("upassword") String upassword) throws SQLException;
	public String getInteresting(String uid);
	public boolean setInteresting(String uid, String interesting, int how);
	public User userIdSearch(@Param("uname") String uname, @Param("uphone") String uphone);
	public User userPWSearch(@Param("uid") String uid, @Param("uname") String uname, @Param("uphone") String uphone);
	public boolean inteDelete(String uid);
	public ArrayList<InterestHouseDeal> getInterestHouseDeal(@Param("uid") String uid);
	public int insertInterestHouseDeal(@Param("uid") String uid, @Param("no") int no);
	public int deleteInterestHouseDeal(@Param("uid") String uid, @Param("no") int no);
}  
  