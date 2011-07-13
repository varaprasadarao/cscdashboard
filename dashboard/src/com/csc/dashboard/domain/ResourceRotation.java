package com.csc.dashboard.domain;

import java.io.Serializable;

public class ResourceRotation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5580485046484602039L;

	private int id;
	private String account;
	private String month;
	private String statistics;
	private String group;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getStatistics() {
		return statistics;
	}
	public void setStatistics(String statistics) {
		this.statistics = statistics;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	
	


}
