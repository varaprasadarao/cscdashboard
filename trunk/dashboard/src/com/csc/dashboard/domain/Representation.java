package com.csc.dashboard.domain;

import java.io.Serializable;

public class Representation implements Serializable{

	
	private int id;
	private String month;
	private String account;
	private String team;
	private String nameOfForum;
	private String resource;
	private String status;
	private String supportRequired;
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
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getNameOfForum() {
		return nameOfForum;
	}
	public void setNameOfForum(String nameOfForum) {
		this.nameOfForum = nameOfForum;
	}
	public String getResource() {
		return resource;
	}
	public void setResource(String resource) {
		this.resource = resource;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSupportRequired() {
		return supportRequired;
	}
	public void setSupportRequired(String supportRequired) {
		this.supportRequired = supportRequired;
	}
	
	
	
}
