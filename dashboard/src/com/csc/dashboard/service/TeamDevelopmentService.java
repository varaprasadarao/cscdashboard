package com.csc.dashboard.service;

import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import com.csc.dashboard.Utils;
import com.csc.dashboard.dao.TeamDevelopmentDao;
import com.csc.dashboard.dao.TeamDevelopmentDaoImpl;
import com.csc.dashboard.domain.Attrition;
import com.csc.dashboard.domain.Backfill;
import com.csc.dashboard.domain.Representation;
import com.csc.dashboard.domain.ResourceRotation;
import com.csc.dashboard.domain.TeamBuilding;

public class TeamDevelopmentService {
	
	
	public List<Attrition> getAttrition(int account, int startMonth, int startYear) throws SQLException{
		TeamDevelopmentDao dao = new TeamDevelopmentDaoImpl();
		List<Attrition> attrition = dao.getAttrition(account,startMonth,startYear); 
		int cumulative = 0;
		for(Attrition attr:attrition){
			attr.setMonth(Utils.getFormatedMonth(attr.getMonthId()));
			cumulative += attr.getAttrNum();
			attr.setCumulativeExits(cumulative);
			attr.setAvgHeadCount((attr.getOpeningHeadCount() + attr.getClosingHeadCount())/2);
			if(attr.getAvgHeadCount()==0){
				attr.setCumulativeAnnAttr(0);
			}else{
				attr.setCumulativeAnnAttr(roundDecimal((((double)attr.getCumulativeExits()/attr.getAvgHeadCount())/12)*12*100));
			}
		}
		return 	attrition;	
	}
	
	
	
	public List<Backfill> getBackfillInfo(int account, int month, int year) throws SQLException{
		System.out.println("BackFill Info = " + account + " " + month + " " + year);
		TeamDevelopmentDao dao = new TeamDevelopmentDaoImpl();
		List<Backfill> backfill = dao.getBackfillInfo(account, month, year);
		
		return backfill;
	}
		
	public List<Representation> getRepresentation(int account, int month, int year) throws SQLException{
		TeamDevelopmentDao dao = new TeamDevelopmentDaoImpl();
		List<Representation> rep = dao.getRepresentation(account, month, year);
		return rep;
		
	}
	
	public List<TeamBuilding> getTeamBuildingAct(int account, int month, int year) throws SQLException{
		TeamDevelopmentDao dao = new TeamDevelopmentDaoImpl();
		List<TeamBuilding> teamBuilding = dao.getTeamBuildingAct(account, month, year);
		
		return teamBuilding;
	}
	
	public List<ResourceRotation> getResourceRotation(int account, int month, int year) throws SQLException{
		TeamDevelopmentDao dao = new TeamDevelopmentDaoImpl();
		List<ResourceRotation> resource = dao.getResourceRotation(account, month, year);
		return resource;
	}
	
	
	private double roundDecimal(double d) {
    	DecimalFormat twoDForm = new DecimalFormat("#.#");
    	return Double.valueOf(twoDForm.format(d));
	}

}
