package com.csc.dashboard.domain;

import java.io.Serializable;

public class EManageDisc implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1655129876660759193L;
	private int id;
	private int headCount;
	private String team;
	private String month;
	private int eManageDisc;
	private double eManageDiscHC;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
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
	public int geteManageDisc() {
		return eManageDisc;
	}
	public void seteManageDisc(int eManageDisc) {
		this.eManageDisc = eManageDisc;
	}
	public double geteManageDiscHC() {
		return eManageDiscHC;
	}
	public void seteManageDiscHC(double eManageDiscHC) {
		this.eManageDiscHC = eManageDiscHC;
	}
	
	
}
