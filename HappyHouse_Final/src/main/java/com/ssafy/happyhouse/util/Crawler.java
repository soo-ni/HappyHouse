package com.ssafy.happyhouse.util;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service

public class Crawler {
	// 크롤러

	

	public List<News> getArticle() throws IOException {
		List<News> newsList = new LinkedList<News>();
		// Jsoup를 이용해서 https://endic.naver.com/?sLn=kr 크롤링

		String url = "https://land.naver.com/news/headline.nhn"; // 크롤링할 url지정
		String baseUrl = "https://land.naver.com";
		Document doc = null; // Document에는 페이지의 전체 소스가 저장된다

		try {

			doc = Jsoup.connect(url).get();

		} catch (IOException e) {

			e.printStackTrace();

		}

		// select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		// ==>원하는 값들이 들어있는 덩어리를 가져온다
		Elements element = doc.select(".headline_list dl");

		// Iterator을 사용하여 하나씩 값 가져오기
		// 덩어리안에서 필요한부분만 선택하여 가져올 수 있다.
		Iterator<Element> ie1 = element.select("dt:nth-child(2)").iterator();

		while (ie1.hasNext()) {
			Element e = ie1.next();
			Element e1 = e.selectFirst("a");
			News news = new News();
			news.setAddress(baseUrl + e1.getElementsByAttribute("href").attr("href"));
			news.setTitle(e1.text());
			doc = Jsoup.connect(news.getAddress()).get();
			Elements contentE = doc.select("#content");
			news.setContent(contentE.select("#articleBody").html());
			news.setCreatedDate(contentE.select("#news_write_date").text());
			newsList.add(news);
		}
		return newsList;

	}

	public List<News> getArticlePreview() throws IOException {
		List<News> newsList = new LinkedList<News>();
		String url = "https://land.naver.com/news/headline.nhn"; // 크롤링할 url지정
		String baseUrl = "https://land.naver.com";
		Document doc = null; // Document에는 페이지의 전체 소스가 저장된다

		try {

			doc = Jsoup.connect(url).get();

		} catch (IOException e) {

			e.printStackTrace();

		}

		// select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		// ==>원하는 값들이 들어있는 덩어리를 가져온다
		Elements element = doc.select(".headline_list dl");

		// Iterator을 사용하여 하나씩 값 가져오기
		// 덩어리안에서 필요한부분만 선택하여 가져올 수 있다.
		Iterator<Element> ie1 = element.select("dt:nth-child(2)").iterator();

		for (int i = 0; i <5; i++) {
			
		
			if(ie1.hasNext()) {
				Element e = ie1.next();
				Element e1 = e.selectFirst("a");
				News news = new News();
				news.setTitle(e1.text());
				news.setAddress(baseUrl + e1.getElementsByAttribute("href").attr("href"));
				doc = Jsoup.connect(news.getAddress()).get();
				Elements contentE = doc.select("#content");
				news.setCreatedDate(contentE.select("#news_write_date").text());
				newsList.add(news);
			}
		
		}
		return newsList;

	}
}
