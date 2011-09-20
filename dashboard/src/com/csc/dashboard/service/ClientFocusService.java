package com.csc.dashboard.service;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.Utils;
import com.csc.dashboard.dao.ClientFocusDao;
import com.csc.dashboard.dao.ClientFocusDaoImpl;
import com.csc.dashboard.domain.Assessment;
import com.csc.dashboard.domain.ClientAppreciation;
import com.csc.dashboard.domain.ContributionTop10;
import com.csc.dashboard.domain.Csat;
import com.csc.dashboard.domain.ImproveInit;
import com.csc.dashboard.domain.Innovation;
import com.csc.dashboard.domain.KMScorecard;
import com.csc.dashboard.domain.NewOrderClosed;
import com.csc.dashboard.domain.VerticalLevelInit;

public class ClientFocusService {
	
	ClientFocusDao clientDao = new ClientFocusDaoImpl();

	public List<ClientAppreciation> getClientAppreciation(int account, int month, int year) throws SQLException{
		List<ClientAppreciation> res = clientDao.getClientAppreciation(account, month, year);
		return res;
	}
	
	public List<Csat> getCSAT(int account, int month, int year) throws SQLException{
		List<Csat> res = clientDao.getCSAT(account, month, year);
		return res;
	}
	
	public List<NewOrderClosed> getNewOrderClosed(int account, int month, int year) throws SQLException{
		List<NewOrderClosed> res = clientDao.getNewOrderClosed(account, month, year);
		return res;
	}
	
	public List<Innovation> getInnovations(int account, int month,int year)throws SQLException{
		List<Innovation> res = clientDao.getInnovations(account, month, year);
		
		if(res != null && res.size() != 0){
			Innovation overall = new Innovation();
			int totalHC = 0;
			int totalNumInnoSub = 0;
			int totalNumInnoQua = 0;
			int totalManHrsQualInno = 0;
			int totalQualInnoHC = 0;
			int totalInnoIndex = 0;
			
			
			for(Innovation inno: res){
				totalHC += inno.getAvgHC();
				totalNumInnoSub += inno.getNumInnoSub();
				totalNumInnoQua += inno.getNumInnoQua();
				totalManHrsQualInno += inno.getManHrsQualInno();
				
				inno.setQualInnoHC(Utils.roundDecimal((double)(inno.getNumInnoQua()*100/(double)inno.getAvgHC())));
				
				System.out.println(inno.getNumInnoQua() + "   dd "+inno.getAvgHC()+"CCC" + Utils.roundDecimal((double)(inno.getNumInnoQua()*100/(double)inno.getAvgHC())) );
				
				inno.setInnoIndex(Utils.roundDecimal((double)(inno.getManHrsQualInno()*100/((double)inno.getAvgHC()*180))));
			}
			overall.setTeam("Overall");
			overall.setAvgHC(totalHC);
			overall.setNumInnoSub(totalNumInnoSub);
			overall.setNumInnoQua(totalNumInnoQua);
			overall.setManHrsQualInno(totalManHrsQualInno);
			
			overall.setQualInnoHC(Utils.roundDecimal((double)(overall.getNumInnoQua()*100/(double)overall.getAvgHC())));
			overall.setInnoIndex(Utils.roundDecimal((double)(overall.getManHrsQualInno()*100/((double)overall.getAvgHC()*180))));
			
			res.add(0,overall);	
		}
		
		return res;
	}
	
	public List<Assessment> getAssessments(int account, int month, int year) throws SQLException{
		List<Assessment> res = clientDao.getAssessments(account, month, year);
		return res;
	}
	
	public List<ImproveInit> getImprovementInitiatives(int account, int month, int year) throws SQLException{
		List<ImproveInit> res = clientDao.getImprovementInitiatives(account, month, year);
		return res;
	}
	
	public List<KMScorecard> getKMScorecard(int account, int month, int year) throws SQLException{
		List<KMScorecard> res = clientDao.getKMScorecard(account, month, year);
		
		if(res != null && res.size() !=0){
			KMScorecard overall = new KMScorecard();
			
			int totalNumKM = 0;
			int totalQualifiedTop = 0;
			int totalHeadCount = 0;
			
			for(KMScorecard it:res){
				totalNumKM += it.getNumKMContributed();
				totalQualifiedTop += it.getQualifiedTop();
				totalHeadCount += it.getHeadCount();
				it.setPerOfHC(Utils.roundDecimal((double)(it.getNumKMContributed()*100/(double)it.getHeadCount())));
			}
			overall.setTeam("Overall");
			overall.setHeadCount(totalHeadCount);
			overall.setNumKMContributed(totalNumKM);
			overall.setQualifiedTop(totalQualifiedTop);
			overall.setPerOfHC(Utils.roundDecimal((double)(overall.getNumKMContributed()*100/(double)overall.getHeadCount())));
			res.add(0,overall);	

		}
		
		return res;
	}
	
	public List<ContributionTop10> getTop10Contributors(int account, int month, int year) throws SQLException{
		List<ContributionTop10> res = clientDao.getTop10Contributors(account, month, year);
		return res;
		
	}
	
	public List<VerticalLevelInit> getVerticalLevelInitiatives(int account, int month, int year) throws SQLException{
		List<VerticalLevelInit> res = clientDao.getVerticalLevelInitiatives(account, month, year);
		return res;
	}
	
	
	
	
	
}
