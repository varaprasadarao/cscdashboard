package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csc.dashboard.domain.BillingEfficiency;
import com.csc.dashboard.domain.DemandForecast;
import com.csc.dashboard.domain.EManageDisc;
import com.csc.dashboard.domain.ETesAccuracy;
import com.csc.dashboard.domain.Escalation;
import com.csc.dashboard.domain.GradeMix;
import com.csc.dashboard.domain.Margins;
import com.csc.dashboard.domain.NonBillability;
import com.csc.dashboard.domain.Utilization;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class OpExcelDaoImpl implements OpExcelDao {

	public List<BillingEfficiency> getBillingEfficieny(int account, int month) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<BillingEfficiency> li = (List<BillingEfficiency>)sqlMap.queryForList("getBillingEfficieny" , parameters);
		return li;
	}

	public List<DemandForecast> getDemandForecast(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<DemandForecast> li = (List<DemandForecast>)sqlMap.queryForList("getDemandForecast" , parameters);
		return li;
	}

	public List<EManageDisc> getEManageDisc(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<EManageDisc> li = (List<EManageDisc>)sqlMap.queryForList("getEManageDisc" , parameters);
		return li;
	}

	public List<ETesAccuracy> getETesAccuracy(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<ETesAccuracy> li = (List<ETesAccuracy>)sqlMap.queryForList("getETesAccuracy" , parameters);
		return li;
	}

	public List<Escalation> getEscalation(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Escalation> li = (List<Escalation>)sqlMap.queryForList("getEscalation" , parameters);
		return li;
	}

	public List<GradeMix> getGradeMix(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<GradeMix> li = (List<GradeMix>)sqlMap.queryForList("getGradeMix" , parameters);
		return li;
	}

	public List<Margins> getMargins(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Margins> li = (List<Margins>)sqlMap.queryForList("getMargins" , parameters);
		return li;
	}

	public List<NonBillability> getNonBillability(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<NonBillability> li = (List<NonBillability>)sqlMap.queryForList("getNonBillability" , parameters);
		return li;
	}

	public List<Utilization> getUtilization(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Utilization> li = (List<Utilization>)sqlMap.queryForList("getUtilization" , parameters);
		return li;
	}

	public List<BillingEfficiency> getTeamBillingEfficieny(int account, int month, int monthDur) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("monthStart", month-monthDur);
		parameters.put("monthEnd", month);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<BillingEfficiency> li = (List<BillingEfficiency>)sqlMap.queryForList("getTeamBillingEfficieny" , parameters);
		return li;
	}
	public List<BillingEfficiency> getTeamAvgBillingEfficieny(int account, int month, int monthDur) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("monthStart", month-monthDur);
		parameters.put("monthEnd", month);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<BillingEfficiency> li = (List<BillingEfficiency>)sqlMap.queryForList("getTeamAvgBillingEfficieny" , parameters);
		return li;
	}
	
}
