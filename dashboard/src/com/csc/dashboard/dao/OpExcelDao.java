package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.BillingEfficiency;
import com.csc.dashboard.domain.DemandForecast;
import com.csc.dashboard.domain.EManageDisc;
import com.csc.dashboard.domain.ETesAccuracy;
import com.csc.dashboard.domain.Escalation;
import com.csc.dashboard.domain.GradeMix;
import com.csc.dashboard.domain.Margins;
import com.csc.dashboard.domain.NonBillability;
import com.csc.dashboard.domain.Utilization;

public interface OpExcelDao {
	
	
	public List<NonBillability> getNonBillability(int account, int month, int year) throws SQLException;
	
	public List<EManageDisc> getEManageDisc(int account, int month, int year) throws SQLException;
	
	public List<DemandForecast> getDemandForecast(int account, int month, int year) throws SQLException;
	
	public List<ETesAccuracy> getETesAccuracy(int account, int month, int year) throws SQLException;
	
	public List<BillingEfficiency> getBillingEfficieny(int account, int month) throws SQLException;
	
	public List<BillingEfficiency> getTeamBillingEfficieny(int account, int month, int monthDur) throws SQLException;
	
	public List<BillingEfficiency> getTeamAvgBillingEfficieny(int account, int month, int monthDur) throws SQLException;
	
	public List<GradeMix> getGradeMix(int account, int month, int year) throws SQLException;
	
	public List<Utilization> getUtilization(int account, int month, int year) throws SQLException;
	
	public List<Escalation> getEscalation(int account, int month, int year) throws SQLException;
	
	public List<Margins> getMargins(int account, int month, int year) throws SQLException;
	
	

}
