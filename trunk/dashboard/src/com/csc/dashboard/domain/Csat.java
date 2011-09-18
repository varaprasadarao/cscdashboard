package com.csc.dashboard.domain;

import java.io.Serializable;

public class Csat implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5760890776175463501L;
	private int id ;
	private String team;
	private String description;
	private String rating;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	
	
	
}
