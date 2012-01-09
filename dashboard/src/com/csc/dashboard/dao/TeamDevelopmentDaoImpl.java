package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csc.dashboard.domain.Attrition;
import com.csc.dashboard.domain.Backfill;
import com.csc.dashboard.domain.Representation;
import com.csc.dashboard.domain.ResourceRotation;
import com.csc.dashboard.domain.TeamBuilding;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class TeamDevelopmentDaoImpl implements TeamDevelopmentDao {

	public List<Attrition> getAttrition(int account, int startMonth, int startYear)throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("startMonth", startYear*12 + startMonth - 13);
		parameters.put("endMonth", startYear*12 + startMonth - 1);
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Attrition> uv = (List<Attrition>)sqlMap.queryForList("getAttrition" , parameters);
		return uv;
	}

	public List<Backfill> getBackfillInfo(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Backfill> li = (List<Backfill>)sqlMap.queryForList("getBackfillInfo" , parameters);
		return li;
	}

	public List<Representation> getRepresentation(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<Representation> li = (List<Representation>)sqlMap.queryForList("getRepresentation" , parameters);
		return li;
	}

	public List<ResourceRotation> getResourceRotation(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<ResourceRotation> li = (List<ResourceRotation>)sqlMap.queryForList("getResourceRotation" , parameters);
		return li;
	}

	public List<TeamBuilding> getTeamBuildingAct(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<TeamBuilding> li = (List<TeamBuilding>)sqlMap.queryForList("getTeamBuildingAct" , parameters);
		return li;
	}

}
