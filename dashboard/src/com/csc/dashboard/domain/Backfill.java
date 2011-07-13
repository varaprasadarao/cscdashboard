package com.csc.dashboard.domain;

import java.io.Serializable;

public class Backfill implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8175610295773688430L;
	private int id;
	private String account;
	private String month;
	private String novient;
	private String empServingNotice;
	private String lastWorkingDate;
	private String replacementDate;
	private String replacementIdentified;
	private String status;
	
	
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
	public String getNovient() {
		return novient;
	}
	public void setNovient(String novient) {
		this.novient = novient;
	}
	public String getEmpServingNotice() {
		return empServingNotice;
	}
	public void setEmpServingNotice(String empServingNotice) {
		this.empServingNotice = empServingNotice;
	}
	public String getLastWorkingDate() {
		return lastWorkingDate;
	}
	public void setLastWorkingDate(String lastWorkingDate) {
		this.lastWorkingDate = lastWorkingDate;
	}
	public String getReplacementDate() {
		return replacementDate;
	}
	public void setReplacementDate(String replacementDate) {
		this.replacementDate = replacementDate;
	}
	public String getReplacementIdentified() {
		return replacementIdentified;
	}
	public void setReplacementIdentified(String replacementIdentified) {
		this.replacementIdentified = replacementIdentified;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	

}
