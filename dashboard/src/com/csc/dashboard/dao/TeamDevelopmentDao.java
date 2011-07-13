package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.Attrition;
import com.csc.dashboard.domain.Backfill;
import com.csc.dashboard.domain.Representation;
import com.csc.dashboard.domain.ResourceRotation;
import com.csc.dashboard.domain.TeamBuilding;

public interface TeamDevelopmentDao {
	
	public List<Attrition> getAttrition(int account, int startMonth, int startYear) throws SQLException;
	
	public List<Backfill> getBackfillInfo(int account, int month, int year) throws SQLException;
	
	public List<Representation> getRepresentation(int account, int month, int year) throws SQLException;
	
	public List<TeamBuilding> getTeamBuildingAct(int account, int month, int year) throws SQLException;
	
	public List<ResourceRotation> getResourceRotation(int account, int month, int year) throws SQLException;
	
	

}
