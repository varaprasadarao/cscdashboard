package com.csc.dashboard.domain;

import java.io.Serializable;

public class NewOrderClosed implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3653344613884148634L;
	private int id;
	private String team;
	private String type;
	private String effort;
	private String briefDesc;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEffort() {
		return effort;
	}
	public void setEffort(String effort) {
		this.effort = effort;
	}
	public String getBriefDesc() {
		return briefDesc;
	}
	public void setBriefDesc(String briefDesc) {
		this.briefDesc = briefDesc;
	}
	
	

}
