package com.csc.dashboard.domain;

import java.io.Serializable;

public class DemandForecast implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 280080288477457430L;
	private int id;
	private String team;
	private String month;
	private int openDemandRepl;
	private int openDemandNew;
	private int openDemand;
	private int demandForecastRepl;
	private int demandForecastNew;
	private int demandForecast;
	private double demandForecastDesc;
	
	
	
	public int getOpenDemand() {
		return openDemand;
	}
	public void setOpenDemand(int openDemand) {
		this.openDemand = openDemand;
	}
	public int getDemandForecast() {
		return demandForecast;
	}
	public void setDemandForecast(int demandForecast) {
		this.demandForecast = demandForecast;
	}
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
	public int getOpenDemandRepl() {
		return openDemandRepl;
	}
	public void setOpenDemandRepl(int openDemandRepl) {
		this.openDemandRepl = openDemandRepl;
	}
	public int getOpenDemandNew() {
		return openDemandNew;
	}
	public void setOpenDemandNew(int openDemandNew) {
		this.openDemandNew = openDemandNew;
	}
	public int getDemandForecastRepl() {
		return demandForecastRepl;
	}
	public void setDemandForecastRepl(int demandForecastRepl) {
		this.demandForecastRepl = demandForecastRepl;
	}
	public int getDemandForecastNew() {
		return demandForecastNew;
	}
	public void setDemandForecastNew(int demandForecastNew) {
		this.demandForecastNew = demandForecastNew;
	}
	public double getDemandForecastDesc() {
		return demandForecastDesc;
	}
	public void setDemandForecastDesc(double demandForecastDesc) {
		this.demandForecastDesc = demandForecastDesc;
	}
	
	
	

}
