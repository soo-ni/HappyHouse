package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.util.Crawler;
import com.ssafy.happyhouse.util.News;

@RestController
@RequestMapping("/article")
public class ArticleController {
	@Autowired Crawler crawler;
	
	@GetMapping(value="/")
	public List<News> getArticle() {
		
		try {
			return crawler.getArticle();
		} catch (IOException e) {
			System.out.println("주택 관련 기사 크롤링 중 오류 발생 ");
			e.printStackTrace();
			return null;
		}
	} 
	
	@GetMapping(value="/preview")
	public List<News> getArticlePreview() {
		
		try {
			return crawler.getArticlePreview();
		} catch (IOException e) {
			System.out.println("메인페이지 기사 미리보기 크롤링 중 오류 발생 ");
			e.printStackTrace();
			return null;
		}
	} 

}
