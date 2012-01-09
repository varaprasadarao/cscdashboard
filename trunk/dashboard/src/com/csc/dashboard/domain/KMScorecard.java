package com.csc.dashboard.domain;

import java.io.Serializable;

public class KMScorecard implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7871317352896395910L;
	private String team;
	private int teamId;
	private int numKMContributed;
	private double perOfHC;
	private int qualifiedTop;
	private int headCount;
	
	
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
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
	public int getNumKMContributed() {
		return numKMContributed;
	}
	public void setNumKMContributed(int numKMContributed) {
		this.numKMContributed = numKMContributed;
	}
	public double getPerOfHC() {
		return perOfHC;
	}
	public void setPerOfHC(double perOfHC) {
		this.perOfHC = perOfHC;
	}
	public int getQualifiedTop() {
		return qualifiedTop;
	}
	public void setQualifiedTop(int qualifiedTop) {
		this.qualifiedTop = qualifiedTop;
	}
	
	
	

}
