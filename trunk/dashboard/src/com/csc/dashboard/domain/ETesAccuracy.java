package com.csc.dashboard.domain;

import java.io.Serializable;

public class ETesAccuracy implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5363894813964190358L;
	private int id;
	private int headCount;
	private String team;
	private String month;
	private int mts;
	private int incompleteEtes;
	private double eTesAccuracy;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getMts() {
		return mts;
	}
	public void setMts(int mts) {
		this.mts = mts;
	}
	public int getIncompleteEtes() {
		return incompleteEtes;
	}
	public void setIncompleteEtes(int incompleteEtes) {
		this.incompleteEtes = incompleteEtes;
	}
	public double geteTesAccuracy() {
		return eTesAccuracy;
	}
	public void seteTesAccuracy(double eTesAccuracy) {
		this.eTesAccuracy = eTesAccuracy;
	}
	
	

}
