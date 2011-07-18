package com.csc.dashboard.domain;

import java.io.Serializable;

public class Margins implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7582673916295158511L;
	private int id;
	private String month;
	private String team;
	private double revenue;
	private double cost;
	private double contributingMargin;
	private double oi;
	
	
	public double getContributingMargin() {
		return contributingMargin;
	}
	public void setContributingMargin(double contributingMargin) {
		this.contributingMargin = contributingMargin;
	}
	public double getOi() {
		return oi;
	}
	public void setOi(double oi) {
		this.oi = oi;
	}
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
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public double getRevenue() {
		return revenue;
	}
	public void setRevenue(double revenue) {
		this.revenue = revenue;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	
	

}
