package com.csc.dashboard.domain;

import java.io.Serializable;

public class Innovation implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1035906590132748030L;
	private int id;
	private String team;
	private int teamId;
	private int avgHC;
	private int numInnoSub;
	private int numInnoQua;
	private int manHrsQualInno;
	private double qualInnoHC;
	private double innoIndex;
	
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
	public int getAvgHC() {
		return avgHC;
	}
	public void setAvgHC(int avgHC) {
		this.avgHC = avgHC;
	}
	public int getNumInnoSub() {
		return numInnoSub;
	}
	public void setNumInnoSub(int numInnoSub) {
		this.numInnoSub = numInnoSub;
	}
	public int getNumInnoQua() {
		return numInnoQua;
	}
	public void setNumInnoQua(int numInnoQua) {
		this.numInnoQua = numInnoQua;
	}
	public int getManHrsQualInno() {
		return manHrsQualInno;
	}
	public void setManHrsQualInno(int manHrsQualInno) {
		this.manHrsQualInno = manHrsQualInno;
	}
	public double getQualInnoHC() {
		return qualInnoHC;
	}
	public void setQualInnoHC(double qualInnoHC) {
		this.qualInnoHC = qualInnoHC;
	}
	public double getInnoIndex() {
		return innoIndex;
	}
	public void setInnoIndex(double innoIndex) {
		this.innoIndex = innoIndex;
	}
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	
	
	

}
