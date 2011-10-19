package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csc.dashboard.domain.Assessment;
import com.csc.dashboard.domain.Backfill;
import com.csc.dashboard.domain.ClientAppreciation;
import com.csc.dashboard.domain.ContributionTop10;
import com.csc.dashboard.domain.Csat;
import com.csc.dashboard.domain.ImproveInit;
import com.csc.dashboard.domain.Innovation;
import com.csc.dashboard.domain.KMScorecard;
import com.csc.dashboard.domain.NewOrderClosed;
import com.csc.dashboard.domain.VerticalLevelInit;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class ClientFocusDaoImpl implements ClientFocusDao {

	public List<Assessment> getAssessments(int account, int month, int year) throws SQLException{
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Assessment> li = (List<Assessment>)sqlMap.queryForList("getAssessments" , parameters);
		return li;
	}

	public List<Csat> getCSAT(int account, int month, int year)
			throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Csat> li = (List<Csat>)sqlMap.queryForList("getCSAT" , parameters);
		return li;
	}

	public List<ClientAppreciation> getClientAppreciation(int account,
			int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<ClientAppreciation> li = (List<ClientAppreciation>)sqlMap.queryForList("getClientAppreciation" , parameters);
		return li;
	}

	public List<ImproveInit> getImprovementInitiatives(int account, int month,
			int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<ImproveInit> li = (List<ImproveInit>)sqlMap.queryForList("getImprovementInitiatives" , parameters);
		return li;
	}

	public List<Innovation> getInnovations(int account, int month, int year)
			throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Innovation> li = (List<Innovation>)sqlMap.queryForList("getInnovations" , parameters);
		return li;
	}

	public List<KMScorecard> getKMScorecard(int account, int month, int year)
			throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<KMScorecard> li = (List<KMScorecard>)sqlMap.queryForList("getKMScorecard" , parameters);
		return li;
	}

	public List<NewOrderClosed> getNewOrderClosed(int account, int month,
			int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<NewOrderClosed> li = (List<NewOrderClosed>)sqlMap.queryForList("getNewOrderClosed" , parameters);
		return li;
	}

	public List<ContributionTop10> getTop10Contributors(int account, int month,
			int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<ContributionTop10> li = (List<ContributionTop10>)sqlMap.queryForList("getTop10Contributors" , parameters);
		return li;
	}

	public List<VerticalLevelInit> getVerticalLevelInitiatives(int account,
			int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<VerticalLevelInit> li = (List<VerticalLevelInit>)sqlMap.queryForList("getVerticalLevelInitiatives" , parameters);
		return li;
	}
	
	public Integer getHeadCount(int account, int month, int year) throws SQLException{
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", month);
		parameters.put("year", year);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return (Integer)sqlMap.queryForObject("getHeadCount" , parameters);
		
	}

}
