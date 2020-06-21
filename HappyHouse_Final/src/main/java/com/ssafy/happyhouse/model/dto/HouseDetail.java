package com.ssafy.happyhouse.model.dto;

public class HouseDetail {
////houseinfo 
	/**아파트를 식별할 번호*/
	private int    no;
	/**법정 동명 */
	private String dong;
	/**아파트 이름 */
	private String AptName;
	/**법정 동코드 */
	private int code;
	/**건축 연도*/
	private int buildYear;
	/**지번*/
	private String jibun;
	/** */
	private String lat;
	private String lng;
	
	/**이미지 경로*/
	protected String img;
	/////////////////

	/**거래 금액 */
	private String dealAmount;

	/**거래 연도*/
	private int dealYear;
	/**거래 월 */
	private int dealMonth;
	/**거래 일 */
	private int dealDay;
	/**전용면적 */
	private double area;
	/**면적 */
	private String perarea;
	/**1인당 공원면적*/
	private String perpark;
	/**미세먼지 농도*/
	private String finedust;
	public HouseDetail() {
		super();
	}
	public HouseDetail(int no, String dong, String aptName, int code, int buildYear, String jibun, String lat,
			String lng, String img, String dealAmount, int dealYear, int dealMonth, int dealDay, double area,
			String perarea, String perpark, String finedust) {
		super();
		this.no = no;
		this.dong = dong;
		this.AptName = aptName;
		this.code = code;
		this.buildYear = buildYear;
		this.jibun = jibun;
		this.lat = lat;
		this.lng = lng;
		this.img = img;
		this.dealAmount = dealAmount;
		this.dealYear = dealYear;
		this.dealMonth = dealMonth;
		this.dealDay = dealDay;
		this.area = area;
		this.perarea = perarea;
		this.perpark = perpark;
		this.finedust = finedust;
	}
	
	public HouseDetail(HouseInfo houseInfo, HouseDeal houseDeal, EnvInfo envInfo) {
		this.no = houseDeal.getNo();
		this.dong = houseDeal.getDong();
		this.AptName = houseDeal.getAptName();
		this.code = houseDeal.getCode();
		this.buildYear = houseDeal.getBuildYear();
		this.jibun = houseDeal.getJibun();
		this.lat = houseDeal.getLat();
		this.lng = houseDeal.getLng();
		this.img = houseDeal.getImg();
		this.dealAmount = houseDeal.getDealAmount() ;
		this.dealYear = houseDeal.getDealYear();
		this.dealMonth = houseDeal.getDealMonth();
		this.dealDay = houseDeal.getDealDay();
		this.area = houseDeal.getArea();
		this.perarea = envInfo.getPerarea();
		this.perpark = envInfo.getPerpark();
		this.finedust = envInfo.getFinedust();
	}
	
	public HouseDetail(HouseInfo houseInfo, HouseDeal houseDeal){
		this.no = houseInfo.getNo();
		this.dong = houseInfo.getDong();
		this.AptName = houseInfo.getAptName();
		this.code = houseInfo.getCode();
		this.buildYear = houseInfo.getBuildYear();
		this.jibun = houseInfo.getJibun();
		this.lat = houseInfo.getLat();
		this.lng = houseInfo.getLng();
		this.img = houseInfo.getImg();
		this.dealAmount = houseDeal.getDealAmount() ;
		this.dealYear = houseDeal.getDealYear();
		this.dealMonth = houseDeal.getDealMonth();
		this.dealDay = houseDeal.getDealDay();
		this.area = houseDeal.getArea();
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAptName() {
		return AptName;
	}
	public void setAptName(String aptName) {
		this.AptName = aptName;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getBuildYear() {
		return buildYear;
	}
	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}
	public String getJibun() {
		return jibun;
	}
	public void setJibun(String jibun) {
		this.jibun = jibun;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDealAmount() {
		return dealAmount;
	}
	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}
	public int getDealYear() {
		return dealYear;
	}
	public void setDealYear(int dealYear) {
		this.dealYear = dealYear;
	}
	public int getDealMonth() {
		return dealMonth;
	}
	public void setDealMonth(int dealMonth) {
		this.dealMonth = dealMonth;
	}
	public int getDealDay() {
		return dealDay;
	}
	public void setDealDay(int dealDay) {
		this.dealDay = dealDay;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public String getPerarea() {
		return perarea;
	}
	public void setPerarea(String perarea) {
		this.perarea = perarea;
	}
	public String getPerpark() {
		return perpark;
	}
	public void setPerpark(String perpark) {
		this.perpark = perpark;
	}
	public String getFinedust() {
		return finedust;
	}
	public void setFinedust(String finedust) {
		this.finedust = finedust;
	}
	
	
	


}
