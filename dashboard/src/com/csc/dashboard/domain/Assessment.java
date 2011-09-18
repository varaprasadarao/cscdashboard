package com.csc.dashboard.domain;

import java.io.Serializable;

public class Assessment implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8098586578204533964L;
	private int id;
	private String team;
	private int knowledge;
	private int process;
	private int technical;
	
	
	
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
	public int getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(int knowledge) {
		this.knowledge = knowledge;
	}
	public int getProcess() {
		return process;
	}
	public void setProcess(int process) {
		this.process = process;
	}
	public int getTechnical() {
		return technical;
	}
	public void setTechnical(int technical) {
		this.technical = technical;
	}
	
	

}
