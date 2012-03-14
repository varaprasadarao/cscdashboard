package com.csc.dashboard.domain;

import java.io.Serializable;

public class BillingEfficiency implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -342059693019218017L;
	private int id;
	private String month;
	private int monthId;
	private String team;
	private int headCount;
	private int maxPossibleBillingHrs;
	private int billedHrs;
	private double billingEfficiency;
	
	
	
	public int getMonthId() {
		return monthId;
	}
	public void setMonthId(int monthId) {
		this.monthId = monthId;
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
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public int getMaxPossibleBillingHrs() {
		return maxPossibleBillingHrs;
	}
	public void setMaxPossibleBillingHrs(int maxPossibleBillingHrs) {
		this.maxPossibleBillingHrs = maxPossibleBillingHrs;
	}
	public int getBilledHrs() {
		return billedHrs;
	}
	public void setBilledHrs(int billedHrs) {
		this.billedHrs = billedHrs;
	}
	public double getBillingEfficiency() {
		return billingEfficiency;
	}
	public void setBillingEfficiency(double billingEfficiency) {
		this.billingEfficiency = billingEfficiency;
	}
	
	
}
