package com.ssafy.happyhouse.model.dto;

public class EnvInfo {
	
	private String gu;
	private String perarea;
	private String perpark;
	private String finedust;
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
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
	@Override
	public String toString() {
		return "EnvInfo [구=" + gu + ", 면적=" + perarea + ", 1인당공원면적=" + perpark + ", 미세먼지농도=" + finedust + "]";
	}
	

}
