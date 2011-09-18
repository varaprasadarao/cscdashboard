package com.csc.dashboard.domain;

import java.io.Serializable;

public class ImproveInit implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8618299891844499881L;
	private String nameOfProg;
	private String primaryTeam;
	private String owner;
	private String startDate;
	private String endDate;
	private int startScore;
	private int desiredScore;
	private int numPplAffected;
	private double pplAffectedHC;
	private String internalTraining;
	private String progDesc;
	
	
	
	public String getNameOfProg() {
		return nameOfProg;
	}
	public void setNameOfProg(String nameOfProg) {
		this.nameOfProg = nameOfProg;
	}
	public String getPrimaryTeam() {
		return primaryTeam;
	}
	public void setPrimaryTeam(String primaryTeam) {
		this.primaryTeam = primaryTeam;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int getStartScore() {
		return startScore;
	}
	public void setStartScore(int startScore) {
		this.startScore = startScore;
	}
	public int getDesiredScore() {
		return desiredScore;
	}
	public void setDesiredScore(int desiredScore) {
		this.desiredScore = desiredScore;
	}
	public int getNumPplAffected() {
		return numPplAffected;
	}
	public void setNumPplAffected(int numPplAffected) {
		this.numPplAffected = numPplAffected;
	}
	public double getPplAffectedHC() {
		return pplAffectedHC;
	}
	public void setPplAffectedHC(double pplAffectedHC) {
		this.pplAffectedHC = pplAffectedHC;
	}
	public String getInternalTraining() {
		return internalTraining;
	}
	public void setInternalTraining(String internalTraining) {
		this.internalTraining = internalTraining;
	}
	public String getProgDesc() {
		return progDesc;
	}
	public void setProgDesc(String progDesc) {
		this.progDesc = progDesc;
	}
	
	
	

}
