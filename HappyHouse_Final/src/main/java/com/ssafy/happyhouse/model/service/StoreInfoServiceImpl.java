package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.mapper.StoreInfoMapper;
import com.ssafy.happyhouse.model.dto.StoreInfo;
@Service
public class StoreInfoServiceImpl implements StoreInfoService {
	
	@Autowired StoreInfoMapper storeInfoMapper;

	@Override
	public List<StoreInfo> searchAllStoreInfo() {
		List<StoreInfo> list = null;
		try {
			list =storeInfoMapper.searchAllStoreInfo();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(list!=null) System.out.println("모든 상권정보 목록 검색");
		return list;
	}

	@Override
	public void insertStoreInfo(StoreInfo storeinfo) {
		
		try {
			storeInfoMapper.insertStoreInfo(storeinfo);
		} catch (SQLException e) {
			System.out.println("storeinfo 등록 실패");
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void updateStoreInfo(StoreInfo storeinfo) {
		try {
			storeInfoMapper.updateStoreInfo(storeinfo);
		} catch (SQLException e) {
			System.out.println("storeinfo 수정 실패");
			e.printStackTrace();
		}
	}

	@Override
	public void deleteStoreInfo(int no) {
		
		try {
			storeInfoMapper.deleteStoreInfo(no);
		} catch (SQLException e) {
			System.out.println("storeinfo 삭제 실패");
			e.printStackTrace();
		}
		
	}

	@Override
	public StoreInfo searchDetail(int no) {
		StoreInfo storeInfo=null;
		try {
			storeInfo =storeInfoMapper.searchDetail(no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return storeInfo;
	}

	@Override
	public List<StoreInfo> search(String dong) {
		List<StoreInfo> list= null;
		try {
			list =storeInfoMapper.search(dong);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(list!=null) {System.out.println("동으로 상권정보리스트 조회 완료");}
		return list;
	}

	@Override
	public List<StoreInfo> searchAllByCodeName(String codename1, String codename2, String codename3) {
		List<StoreInfo> list= null;
		
		try {
			list = storeInfoMapper.searchAllByCodeName(codename1, codename2, codename3);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<StoreInfo> searchAll(String dong, String shopname, int currentPage) {
		return storeInfoMapper.searchAll(dong, shopname, currentPage);
	}

	@Override
	public int storeTotal(String dong, String shopname) {
		return storeInfoMapper.storeTotal(dong, shopname);
	}

}
