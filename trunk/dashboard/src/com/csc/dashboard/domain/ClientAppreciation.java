package com.csc.dashboard.domain;

import java.io.Serializable;

public class ClientAppreciation implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8231066247474543993L;
	private int id;
	private String appriciationFor;
	private String appriciation;
	private String appriciatedBy;
	private String relevance;
	private String team;
	
	
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAppriciationFor() {
		return appriciationFor;
	}
	public void setAppriciationFor(String appriciationFor) {
		this.appriciationFor = appriciationFor;
	}
	public String getAppriciation() {
		return appriciation;
	}
	public void setAppriciation(String appriciation) {
		this.appriciation = appriciation;
	}
	public String getAppriciatedBy() {
		return appriciatedBy;
	}
	public void setAppriciatedBy(String appriciatedBy) {
		this.appriciatedBy = appriciatedBy;
	}
	public String getRelevance() {
		return relevance;
	}
	public void setRelevance(String relevance) {
		this.relevance = relevance;
	}
	
	
	
	
}
