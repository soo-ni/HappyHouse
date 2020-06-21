package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.model.dto.EnvInfo;
import com.ssafy.happyhouse.model.dto.HouseDeal;
import com.ssafy.happyhouse.model.dto.HouseDetail;
import com.ssafy.happyhouse.model.dto.HouseInfo;
import com.ssafy.happyhouse.model.dto.HousePageBean;
import com.ssafy.happyhouse.model.dto.StoreInfo;
import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.service.EnvInfoService;
import com.ssafy.happyhouse.model.service.HouseInfoService;
import com.ssafy.happyhouse.model.service.HouseService;
import com.ssafy.happyhouse.model.service.InterestAreaService;
import com.ssafy.happyhouse.model.service.StoreInfoService;

import io.swagger.annotations.ApiOperation;

@Controller
@RequestMapping("/house")
public class HouseController {
	
	@Autowired 
	HouseService houseService;
	@Autowired 
	HouseInfoService houseInfoService;
	@Autowired 
	EnvInfoService envInfoService;
	@Autowired 
	InterestAreaService interestAreaService;
	
	
	@RequestMapping("/search")
	public @ResponseBody List<HouseDeal> searchAll(String searchField, String searchText, String[] check){
		boolean[] searchType = new boolean[4];
		if (check != null) {
			for (String c : check) {
				searchType[Integer.parseInt(c.trim()) - 1] = true;
			}
		}
		HousePageBean bean = new HousePageBean();
		bean.setSearchType(searchType);
		if (searchField.equals("ALL")) {
		} else if (searchField.equals("DONG")) {
			bean.setDong(searchText);
		} else if (searchField.equals("APT")) {
			bean.setAptname(searchText);
		}
		return houseService.searchAll(0, 0, bean);
	}
	
	@RequestMapping("/search/{OFFSET}")
	public @ResponseBody List<HouseDeal> searchAllOffset(@PathVariable int OFFSET, String searchField, String searchText, String[] check){
		boolean[] searchType = new boolean[4];
		if (check != null) {
			for (String c : check) {
				searchType[Integer.parseInt(c.trim()) - 1] = true;
			}
		}else {
			searchType[0]=true;
		}
		HousePageBean bean = new HousePageBean();
		bean.setSearchType(searchType);
		if (searchField.equals("ALL")) {
		} else if (searchField.equals("DONG")) {
			bean.setDong(searchText);
		} else if (searchField.equals("APT")) {
			bean.setAptname(searchText);
		}
		return houseService.searchAll(OFFSET, 0, bean);
	}
	
	@RequestMapping("/total")
	public @ResponseBody int houseDealTotal(String searchField, String searchText, String[] check){
//		System.out.println(searchField+" "+searchText);
		boolean[] searchType = new boolean[4];
		if (check != null) {
			for (String c : check) {
				searchType[Integer.parseInt(c.trim()) - 1] = true;
			}
		}else {
			searchType[0]=true;
		}
		HousePageBean bean = new HousePageBean();
		bean.setSearchType(searchType);
		if (searchField.equals("ALL")) {
		} else if (searchField.equals("DONG")) {
			bean.setDong(searchText);
		} else if (searchField.equals("APT")) {
			bean.setAptname(searchText);
		}
		
		System.out.println(bean.toString());
		
		int totalCnt = houseService.houseDealTotal(bean);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("totalCnt", totalCnt);
		System.out.println(totalCnt);
		return totalCnt;
	}
	
	@GetMapping("/search/{no}")
	public @ResponseBody HouseDeal search(@PathVariable int no) {
		return houseService.search(no);
	}
	
	@RequestMapping("/view/{no}")
	public @ResponseBody HouseDetail view(Model model, @PathVariable int no, @RequestBody Map<String, String> aptName) {
		System.out.println(aptName.get("aptName")+" "+no+" "+aptName.get("dong"));
		String dong = " "+aptName.get("dong");
		String AptName = aptName.get("aptName");
		HouseInfo houseInfo =  houseInfoService.search(no);
		HouseDeal houseDeal  = houseService.searchApt(no, dong, AptName);
		EnvInfo envInfo = envInfoService.searchByDong(dong.trim());
		HouseDetail houseDetail = new HouseDetail(houseInfo,houseDeal,envInfo);
		
		return houseDetail;
	}
	
	@GetMapping("/viewajax")
	public @ResponseBody HouseDeal viewajax(int h_no) {
		HouseDeal houseDeal  = houseService.search(h_no);
		return  houseService.search(h_no);
	}
	
	
	@GetMapping("/interest")
	public @ResponseBody List<String>  interest(Model model, HttpSession session) {
		User user =(User) session.getAttribute("user");
		if(user!=null) {
			  String uid = user.getUid();
			  System.out.println(uid);
			  List<String> interestList =interestAreaService.search(uid);
			  if(interestList!=null && interestList.size() != 0) {
				  System.out.println(uid+"회원의 관심지역  조회 완료");

				 model.addAttribute("interestList",interestList);
				  return interestList; 
			  }else {
				  model.addAttribute("nointerest","nointerest");
			  }
		}
		return null;
	}
	
	@DeleteMapping(value="/interest/{dong}")
	public ResponseEntity<Integer> delete(@PathVariable String dong, HttpSession session) {
		System.out.println(dong);
		User user =(User) session.getAttribute("user");
		 
		return new ResponseEntity<Integer>(interestAreaService.delete(user.getUid(), dong), HttpStatus.OK);
		
	}
	
	@PostMapping("/add")
	public @ResponseBody int add(Model model, HttpSession session , String donginterest) {
		User user =(User) session.getAttribute("user");
		if(user!=null) {
			String uid = user.getUid();
			System.out.println(donginterest);
			if(!doublecheck(uid,donginterest)) {
				System.out.println("관심지역 추가 완료");
				return interestAreaService.add(uid, donginterest);
			}else {model.addAttribute("doublecheck", "doublecheck");
				return -1;
			}
		}
		return -1;
	}
	
	private boolean doublecheck(String uid, String dong) {
		List<String> interestList = interestAreaService.search(uid);
		if(interestList!=null&&interestList.size()!=0) {
			for (String d: interestList) {
				if(d.equals(dong)) return true;
			}
		}
		return false;
	}
}
