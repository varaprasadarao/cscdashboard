package com.csc.dashboard.domain;

import java.io.Serializable;

public class Utilization implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 377883543837188149L;
	private int id;
	private String team;
	private String month;
	private int utilization;
	private int adHrsDevl;
	private int amsHrsMaint;
	private int obfHours;
	private int valueAdds;
	private int idleHrs;
	private int utilizationMonth1;
	private int utilizationMonth2;
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
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getUtilization() {
		return utilization;
	}
	public void setUtilization(int utilization) {
		this.utilization = utilization;
	}
	public int getAdHrsDevl() {
		return adHrsDevl;
	}
	public void setAdHrsDevl(int adHrsDevl) {
		this.adHrsDevl = adHrsDevl;
	}
	public int getAmsHrsMaint() {
		return amsHrsMaint;
	}
	public void setAmsHrsMaint(int amsHrsMaint) {
		this.amsHrsMaint = amsHrsMaint;
	}
	public int getObfHours() {
		return obfHours;
	}
	public void setObfHours(int obfHours) {
		this.obfHours = obfHours;
	}
	public int getValueAdds() {
		return valueAdds;
	}
	public void setValueAdds(int valueAdds) {
		this.valueAdds = valueAdds;
	}
	public int getIdleHrs() {
		return idleHrs;
	}
	public void setIdleHrs(int idleHrs) {
		this.idleHrs = idleHrs;
	}
	public int getUtilizationMonth1() {
		return utilizationMonth1;
	}
	public void setUtilizationMonth1(int utilizationMonth1) {
		this.utilizationMonth1 = utilizationMonth1;
	}
	public int getUtilizationMonth2() {
		return utilizationMonth2;
	}
	public void setUtilizationMonth2(int utilizationMonth2) {
		this.utilizationMonth2 = utilizationMonth2;
	}
	
	
	
	

}
