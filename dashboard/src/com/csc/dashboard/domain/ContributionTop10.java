package com.csc.dashboard.domain;

import java.io.Serializable;

public class ContributionTop10 implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 9026566594637080598L;
	private String nameOfContri;
	private String team;
	private int position;
	
	
	public String getNameOfContri() {
		return nameOfContri;
	}
	public void setNameOfContri(String nameOfContri) {
		this.nameOfContri = nameOfContri;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	
	
	
	
	
}
