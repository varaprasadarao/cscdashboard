package com.csc.dashboard.domain;

import java.io.Serializable;

public class TeamBuilding implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5435599877035677084L;

	
	private int id;
	private String month;
	private String account;
	private String activity;
	private int resourceImpacted;
	private String impact;
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public int getResourceImpacted() {
		return resourceImpacted;
	}
	public void setResourceImpacted(int resourceImpacted) {
		this.resourceImpacted = resourceImpacted;
	}
	public String getImpact() {
		return impact;
	}
	public void setImpact(String impact) {
		this.impact = impact;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
