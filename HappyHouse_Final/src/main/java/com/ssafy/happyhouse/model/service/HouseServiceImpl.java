package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.HappyHouseException;
import com.ssafy.happyhouse.mapper.HouseMapper;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HousePageBean;

@Service
public class HouseServiceImpl implements HouseService{
	@Autowired
	HouseMapper houseMapper;

	
	/**
	 * 검색 조건(key) 검색 단어(word)에 해당하는 아파트 거래 정보(HouseInfo)를  검색해서 반환.  
	 * @param bean  검색 조건과 검색 단어가 있는 객체
	 * @return 조회한 식품 목록
	 */
	public List<HouseDeal> searchAll(int currentPage, int sizePerPage, HousePageBean bean){
		try {
			boolean[] types = bean.getSearchType();
			int cnt=0;
			for(boolean t: types) {
				if(t)
					cnt++;
			}
			if(cnt==0)
				throw new HappyHouseException("주택타입은 반드시 한개이상을 선택해야합니다.");
			return houseMapper.searchAll(currentPage, sizePerPage, bean);
		}catch(SQLException e){
			throw new HappyHouseException("주택 정보 조회중 오류 발생.");
		}		
	}
	
	/**
	 * 아파트 식별 번호에 해당하는 아파트 거래 정보를 검색해서 반환. 
	 * @param no	검색할 아파트 식별 번호
	 * @return		아파트 식별 번호에 해당하는 아파트 거래 정보를 찾아서 리턴한다, 없으면 null이 리턴됨
	 */
	public HouseDeal search(int no) {
		try {
			HouseDeal deal = houseMapper.search(no);
			if(deal==null)
				throw new HappyHouseException(String.format("거래번호 %d번에 해당하는 주택거래 정보가 존재하지 않습니다.", no));
			return deal;
		}catch(SQLException e) {
			throw new HappyHouseException("주택 정보 조회중 오류 발생");
		}
	}
	
	public HouseDeal searchApt(int no, String dong, String aptName) {
		return houseMapper.searchApt(no, dong, aptName);
	}
	
	public int houseDealTotal(HousePageBean housePageBean) {
		int totalCnt = 0;
		System.out.println(housePageBean);
		String dong = housePageBean.getDong();
		String apt = housePageBean.getAptname();
		if(dong!=null && apt!=null ) {
			System.out.println("1");
			totalCnt = houseMapper.houseDealTotal1(housePageBean);
		}else if(dong!=null) {
			System.out.println("3");
			totalCnt = houseMapper.houseDealTotal3(housePageBean);
		}else if(apt!=null) {
			System.out.println("2");
			totalCnt = houseMapper.houseDealTotal2(housePageBean);
		}else {
			System.out.println("0");
			totalCnt = houseMapper.houseDealTotal(housePageBean);
		}
		return totalCnt;
	}
	
//	public int getTotalCount(HousePageBean bean) throws SQLException {
//		return houseMapper.getTotalCount(bean);
//	}
	
//	@Override
//	public PageNavigation makePageNavigation(int currentPage, int sizePerPage, HousePageBean bean) throws Exception {
//		PageNavigation pageNavigation = new PageNavigation();
//		int naviSize = 10; // 페이지 개수
//		pageNavigation.setCurrentPage(currentPage);
//		pageNavigation.setNaviSize(naviSize);
//		int totalCount = dao.getTotalCount(bean);
//		pageNavigation.setTotalCount(totalCount);
//		int totalPageCount = (totalCount -1 ) / sizePerPage + 1; 
//		pageNavigation.setTotalPageCount(totalPageCount);
//		boolean startRange = currentPage <= naviSize; // startRange : true => 이전 못누름 false 이전 누를 수 있음
//		pageNavigation.setStartRange(startRange);
//		boolean endRange = (totalPageCount - 1) / naviSize * naviSize < currentPage; // true 다음 못누름 false 이전 못누름
//		pageNavigation.setEndRange(endRange);
//		pageNavigation.makeNavigator();
//		return pageNavigation;
//	}

}




