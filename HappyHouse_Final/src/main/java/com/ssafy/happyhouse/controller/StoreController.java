package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.dto.StoreInfo;
import com.ssafy.happyhouse.model.service.StoreInfoService;

@RestController
@RequestMapping("/store")
public class StoreController {
	
	@Autowired 
	StoreInfoService storeInfoService;
	
	@RequestMapping(value = "/{dong}", produces = "application/json; charset=utf8")
	public ResponseEntity<List<StoreInfo>> store(@PathVariable String dong) {
		System.out.println(dong);
		return new ResponseEntity<List<StoreInfo>>(storeInfoService.search(dong), HttpStatus.OK);
	}
	
	@RequestMapping(value = "/detail/{no}", produces = "application/json; charset=utf8")
	public ResponseEntity<StoreInfo> storeDetail(@PathVariable int no) {
		System.out.println(no);
		return new ResponseEntity<StoreInfo>(storeInfoService.searchDetail(no), HttpStatus.OK);
	}
	
	@RequestMapping("/search/{OFFSET}")
	public @ResponseBody List<StoreInfo> searchAllOffset(@PathVariable int OFFSET, String searchField, String searchText){
		String dong="";
		String shopname="";
		if (searchField.equals("ALL")) {
		} else if (searchField.equals("DONG")) {
			dong = searchText;
		} else if (searchField.equals("APT")) {
			shopname = searchText;
		}
		return storeInfoService.searchAll(dong, shopname, OFFSET);
	}
	
	@RequestMapping("/total")
	public @ResponseBody int houseDealTotal(String searchField, String searchText){
//		System.out.println(searchField+" "+searchText);
		String dong="";
		String shopname="";
		if (searchField.equals("ALL")) {
		} else if (searchField.equals("DONG")) {
			dong = searchText;
		} else if (searchField.equals("APT")) {
			shopname = searchText;
		}
		
		int totalCnt = storeInfoService.storeTotal(dong, shopname);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("totalCnt", totalCnt);
		System.out.println(totalCnt);
		return totalCnt;
	}
}
