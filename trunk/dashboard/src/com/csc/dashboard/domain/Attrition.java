package com.csc.dashboard.domain;

public class Attrition {

	
	
	
	
	private int id;
	private String month;
	private int attrNum;
	private int openingHeadCount;
	private int closingHeadCount;
	private int cumulativeExits;
	private int avgHeadCount;
	private double cumulativeAnnAttr;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getAttrNum() {
		return attrNum;
	}
	public void setAttrNum(int attrNum) {
		this.attrNum = attrNum;
	}
	public int getOpeningHeadCount() {
		return openingHeadCount;
	}
	public void setOpeningHeadCount(int openingHeadCount) {
		this.openingHeadCount = openingHeadCount;
	}
	public int getClosingHeadCount() {
		return closingHeadCount;
	}
	public void setClosingHeadCount(int closingHeadCount) {
		this.closingHeadCount = closingHeadCount;
	}
	public int getCumulativeExits() {
		return cumulativeExits;
	}
	public void setCumulativeExits(int cumulativeExits) {
		this.cumulativeExits = cumulativeExits;
	}
	public int getAvgHeadCount() {
		return avgHeadCount;
	}
	public void setAvgHeadCount(int avgHeadCount) {
		this.avgHeadCount = avgHeadCount;
	}
	public double getCumulativeAnnAttr() {
		return cumulativeAnnAttr;
	}
	public void setCumulativeAnnAttr(double cumulativeAnnAttr) {
		this.cumulativeAnnAttr = cumulativeAnnAttr;
	}
	
	
	
	
}
