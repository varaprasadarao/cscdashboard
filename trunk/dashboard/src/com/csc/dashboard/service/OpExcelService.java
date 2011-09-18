package com.csc.dashboard.service;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.Utils;
import com.csc.dashboard.dao.OpExcelDao;
import com.csc.dashboard.dao.OpExcelDaoImpl;
import com.csc.dashboard.domain.BillingEfficiency;
import com.csc.dashboard.domain.DemandForecast;
import com.csc.dashboard.domain.EManageDisc;
import com.csc.dashboard.domain.ETesAccuracy;
import com.csc.dashboard.domain.Escalation;
import com.csc.dashboard.domain.GradeMix;
import com.csc.dashboard.domain.Margins;
import com.csc.dashboard.domain.NonBillability;
import com.csc.dashboard.domain.Utilization;

public class OpExcelService {
	
	OpExcelDao opExcelDao = new OpExcelDaoImpl();
	
	
	public List<NonBillability> getNonBillability(int account, int month, int year) throws SQLException{
		List<NonBillability> res = opExcelDao.getNonBillability(account, month, year);
		if(res != null && res.size() != 0){
			NonBillability overall = new NonBillability();
			int totalHC = 0;
			int totalOffshoreBillingHC = 0;
			int totalOnshoreBillingHC = 0;
			int totalLossOfBillingAvgHC = 0;
			int totalPartialBilling = 0;
			
			
			for(NonBillability nonBill: res){
				totalHC += nonBill.getHeadCount();
				totalOffshoreBillingHC += nonBill.getOffshoreBillingHC();
				totalOnshoreBillingHC += nonBill.getOnshoreBillingHC();
				totalLossOfBillingAvgHC += nonBill.getLossOfBillingAvgHC();
				totalPartialBilling += nonBill.getPartialBilling();
				nonBill.setNonBillabilityRatio(Utils.roundDecimal((double)(nonBill.getHeadCount() - (nonBill.getOffshoreBillingHC() + nonBill.getOnshoreBillingHC() - nonBill.getPartialBilling()))/(double)nonBill.getHeadCount()*100));
			}
			overall.setTeam("Overall");
			overall.setHeadCount(totalHC);
			overall.setOffshoreBillingHC(totalOffshoreBillingHC);
			overall.setOnshoreBillingHC(totalOnshoreBillingHC);
			overall.setLossOfBillingAvgHC(totalLossOfBillingAvgHC);
			overall.setPartialBilling(totalPartialBilling);
			overall.setNonBillabilityRatio(Utils.roundDecimal((double)(overall.getHeadCount() - (overall.getOffshoreBillingHC() + overall.getOnshoreBillingHC() - overall.getPartialBilling()))/(double)overall.getHeadCount()*100));
			res.add(0,overall);	
		}
		return res;
	}
	
	public List<EManageDisc> getEManageDisc(int account, int month, int year) throws SQLException{
		List<EManageDisc> res = opExcelDao.getEManageDisc(account, month, year);
		if(res != null && res.size() !=0 ){
			int totalEManageDisc = 0;
			int totalHC = 0;
			EManageDisc overall = new EManageDisc();
			for(EManageDisc eMan: res){
				totalEManageDisc += eMan.geteManageDisc();
				totalHC += eMan.getHeadCount();
				eMan.seteManageDiscHC(Utils.roundDecimal((double)(eMan.geteManageDisc()*100)/eMan.getHeadCount()));
			}
			overall.setTeam("Overall");
			overall.seteManageDisc(totalEManageDisc);
			overall.seteManageDiscHC(Utils.roundDecimal((double)(totalEManageDisc*100)/totalHC));
			res.add(0,overall);
		}
			
		return res;
	}
	
	public List<DemandForecast> getDemandForecast(int account, int month, int year) throws SQLException{
		List<DemandForecast> res = opExcelDao.getDemandForecast(account, month, year);
		if(res !=null && res.size() != 0){
			int totalOpenDemand = 0;
			int totalOpenDemandNew = 0;
			int totalOpenDemandRepl = 0;
			int totalDemandForecast = 0;
			int totalDemandForecastNew = 0;
			int totalDemandForecastRepl = 0;
			for(DemandForecast dem: res){
				dem.setDemandForecast(dem.getDemandForecastNew()+dem.getDemandForecastRepl());
				dem.setOpenDemand(dem.getOpenDemandNew()+dem.getOpenDemandRepl());
				
				if(dem.getDemandForecast() == 0){
					dem.setDemandForecastDesc(0);
				}else{
					dem.setDemandForecastDesc((double)((dem.getDemandForecast() - dem.getOpenDemand())*100)/dem.getDemandForecast());
				}
				
				
				totalOpenDemand += dem.getOpenDemand();
				totalOpenDemandNew += dem.getOpenDemandNew();
				totalOpenDemandRepl += dem.getOpenDemandRepl();
				totalDemandForecast += dem.getDemandForecast();
				totalDemandForecastNew += dem.getDemandForecastNew();
				totalDemandForecastRepl += dem.getDemandForecastRepl();
				
			}
			
			DemandForecast summ = new DemandForecast();
			summ.setTeam("Overall");
			summ.setOpenDemand(totalOpenDemand);
			summ.setOpenDemandNew(totalOpenDemandNew);
			summ.setOpenDemandRepl(totalOpenDemandRepl);
			summ.setDemandForecast(totalDemandForecast);
			summ.setDemandForecastNew(totalDemandForecastNew);
			summ.setDemandForecastRepl(totalDemandForecastRepl);
			
			
			
			res.add(0, summ);
			
		}
		return res;
	}
	
	public List<ETesAccuracy> getETesAccuracy(int account, int month, int year) throws SQLException{
		List<ETesAccuracy> res = opExcelDao.getETesAccuracy(account, month, year);
		return res;
	}
	
	public List<BillingEfficiency> getBillingEfficieny(int account, int month, int year) throws SQLException{
		List<BillingEfficiency> res = opExcelDao.getBillingEfficieny(account, month, year);
		if(res !=null && res.size() != 0){
			int totalPossibleHrs = 0;
			int totalBilledHrs = 0;
			for(BillingEfficiency bill:res){
				bill.setBillingEfficiency(Utils.roundDecimal((double)(bill.getBilledHrs()*100)/bill.getMaxPossibleBillingHrs()));
				totalPossibleHrs += bill.getMaxPossibleBillingHrs();
				totalBilledHrs += bill.getBilledHrs();
			}
			BillingEfficiency summary = new BillingEfficiency();
			summary.setTeam("Overall");
			summary.setBilledHrs(totalBilledHrs);
			summary.setMaxPossibleBillingHrs(totalPossibleHrs);
			summary.setBillingEfficiency(Utils.roundDecimal((double)(totalBilledHrs*100)/totalPossibleHrs));
			res.add(0,summary);
		}
		return res;
	}
	
	public List<GradeMix> getGradeMix(int account, int month, int year) throws SQLException{
		List<GradeMix> res = opExcelDao.getGradeMix(account, month, year);
		
		if(res != null && res.size() != 0){
			int totalGrade = 0;
			int totalHC = 0;
			for(GradeMix grade : res){
				grade.setGradeMixPer(Utils.roundDecimal((double)(grade.getGradeMix()*100)/grade.getHeadCount()));
				totalGrade += grade.getGradeMix();
				totalHC += grade.getHeadCount();
			}
			GradeMix summary = new GradeMix();
			summary.setTeam("Overall");
			summary.setGradeMix(totalGrade);
			summary.setGradeMixPer(Utils.roundDecimal((double)(totalGrade*100)/totalHC));
			res.add(0,summary);
		}
		return res;
	}
	
	public List<Utilization> getUtilization(int account, int month, int year) throws SQLException{
		List<Utilization> res = opExcelDao.getUtilization(account, month, year);
		if(res != null && res.size() != 0){
			
		}
		return res;
	}
	
	public List<Escalation> getEscalation(int account, int month, int year) throws SQLException{
		List<Escalation> res = opExcelDao.getEscalation(account, month, year);
		return res;
	}
	
	public List<Margins> getMargins(int account, int month, int year) throws SQLException{
		List<Margins> res = opExcelDao.getMargins(account, month, year);
		return res;
	}
	
	
	

}
