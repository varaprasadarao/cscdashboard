package com.csc.dashboard.domain;

import java.io.Serializable;

public class GradeMix implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2031544595046785068L;
	private int id;
	private String team;
	private String month;
	private int gradeMix;
	private double gradeMixPer;
	private int headCount;
	
	
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getGradeMix() {
		return gradeMix;
	}
	public void setGradeMix(int gradeMix) {
		this.gradeMix = gradeMix;
	}
	public double getGradeMixPer() {
		return gradeMixPer;
	}
	public void setGradeMixPer(double gradeMixPer) {
		this.gradeMixPer = gradeMixPer;
	}
	
	
	
}
