package com.csc.dashboard.domain;

import java.io.Serializable;

public class VerticalLevelInit implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8604111840092335088L;
	private String nameOfInit;
	private String sponsor;
	private String keyContributions;
	private String remarks;
	
	
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getNameOfInit() {
		return nameOfInit;
	}
	public void setNameOfInit(String nameOfInit) {
		this.nameOfInit = nameOfInit;
	}
	public String getSponsor() {
		return sponsor;
	}
	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}
	public String getKeyContributions() {
		return keyContributions;
	}
	public void setKeyContributions(String keyContributions) {
		this.keyContributions = keyContributions;
	}
	
	
}
