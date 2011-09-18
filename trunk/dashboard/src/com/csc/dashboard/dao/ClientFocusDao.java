package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.*;

public interface ClientFocusDao {
	
	public List<ClientAppreciation> getClientAppreciation(int account, int month, int year) throws SQLException;
	
	public List<Csat> getCSAT(int account, int month, int year) throws SQLException;
	
	public List<NewOrderClosed> getNewOrderClosed(int account, int month, int year) throws SQLException;
	
	public List<Innovation> getInnovations(int account, int month,int year)throws SQLException;
	
	public List<Assessment> getAssessments(int account, int month, int year) throws SQLException;
	
	public List<ImproveInit> getImprovementInitiatives(int account, int month, int year) throws SQLException;
	
	public List<KMScorecard> getKMScorecard(int account, int month, int year) throws SQLException;
	
	public List<ContributionTop10> getTop10Contributors(int account, int month, int year) throws SQLException;
	
	public List<VerticalLevelInit> getVerticalLevelInitiatives(int account, int month, int year) throws SQLException;
	
	

}
