package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.HappyHouseException;
import com.ssafy.happyhouse.mapper.UserMapper;
import com.ssafy.happyhouse.model.dto.InterestHouseDeal;
import com.ssafy.happyhouse.model.dto.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	
	@Override
	public int userInsert(User dto) {
		int ret = -1;
		System.out.println("회원 가입 중 입니다.");
		try {
			System.out.println(dto);
			ret = userMapper.userInsert(dto);
			System.out.println(dto.getUname() + "님 " + "회원 가입을 축하합니다.");
			return ret;
		} catch (SQLException e) {
			throw new HappyHouseException("회원 가입에 실패했습니다.");
		}
	}

	@Override 
	public int userUpdate(User dto) {
		int ret = -1;
		System.out.println("회원 정보 업데이트 중 입니다.");
		try {
			System.out.println("회원 정보 업데이트가 완료되었습니다.");
			return ret = userMapper.userUpdate(dto);
		} catch (SQLException e) {
			throw new HappyHouseException("회원정보 수정에 실패했습니다.");
		}
	}

	@Override
	public int userDelete(String id) {
		int ret = -1;
		System.out.println("회원 탈퇴 중 입니다.");
		try {
			ret = userMapper.userDelete(id);
			if(ret == 0) {
				throw new HappyHouseException("존재하지 않거나 삭제된 회원정보 입니다.");
			}
			System.out.println("회원 탈퇴가 성공적입니다.");
			return ret;
		} catch (SQLException e) {
			throw new HappyHouseException("존재하지 않거나 삭제된 회원정보 입니다.");
		}
	}

	@Override
	public String getInteresting(String id) {
		return userMapper.getInteresting(id);
	}
	
	@Override
	public boolean setInteresting(String id, String interesting, int how) {
		return userMapper.setInteresting(id,interesting, how);
	}

	@Override
	public User userIdSearch(String uName, String uPhone) {
		return userMapper.userIdSearch(uName, uPhone);
	}

	@Override
	public User userPWSearch(String uid, String uname, String uphone) {
		return userMapper.userPWSearch(uid, uname, uphone);
	}

	@Override
	public User logIn(String uid, String upassword) {
		User user = new User();
		try {
			user = userMapper.logIn(uid, upassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public boolean inteDelete(String uid) {
		return userMapper.inteDelete(uid);
	}

	@Override
	public ArrayList<InterestHouseDeal> getInterestHouseDeal(String uid) {
		return userMapper.getInterestHouseDeal(uid);
	}

	@Override
	public int insertInterestHouseDeal(String uid, int no) {
		return userMapper.insertInterestHouseDeal(uid, no);
	}

	@Override
	public int deleteInterestHouseDeal(String uid, int no) {
		return userMapper.deleteInterestHouseDeal(uid, no);
	}
	
}
