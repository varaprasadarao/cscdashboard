package com.csc.dashboard.domain;

import java.io.Serializable;

public class Escalation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 582563693269449982L;

	
	private int id;
	private String month;
	private String escalation;
	private String status;
	private String assignedTo;
	private int daysOpen;
	private String account;
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
	public String getEscalation() {
		return escalation;
	}
	public void setEscalation(String escalation) {
		this.escalation = escalation;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAssignedTo() {
		return assignedTo;
	}
	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}
	public int getDaysOpen() {
		return daysOpen;
	}
	public void setDaysOpen(int daysOpen) {
		this.daysOpen = daysOpen;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	
	
}
