package com.csc.dashboard.service;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.Utils;
import com.csc.dashboard.dao.SLAAdherenceDao;
import com.csc.dashboard.dao.SLAAdherenceDaoImpl;
import com.csc.dashboard.domain.SLAAdherence;

public class SLAAdherenceService {

	public SLAAdherenceDao slaDao = new SLAAdherenceDaoImpl();
	
	public List<SLAAdherence> getSLAAdherence(int account, int month, int year) throws SQLException {
		List<SLAAdherence> res = null;
		try{
		res = slaDao.getSLAAdherence(account, month, year);
		
		
		if(res!=null && res.size() != 0){
			SLAAdherence overall = new SLAAdherence();
			int totalSev12 = 0;
			int totalSev12Success = 0;
			int totalSev12Fail = 0;
			double totalSev12SLA = 0;
			
			int totalSev3 = 0;
			int totalSev3Success = 0;
			int totalSev3Fail = 0;
			double totalSev3SLA = 0;
			
			int totalSev4 = 0;
			int totalSev4Success = 0;
			int totalSev4Fail = 0;
			double totalSev4SLA = 0;
			
			int totalSev5 = 0;
			int totalSev5Success = 0;
			int totalSev5Fail = 0;
			double totalSev5SLA = 0;
			
			
			for(SLAAdherence sla:res){
				sla.setSev12Fail(sla.getSev12()-sla.getSev12Success());
				if(sla.getSev12Fail() == 0){
					sla.setSev12SuccessRate(100);
				}else{
					sla.setSev12SuccessRate(Utils.roundDecimal((double)(sla.getSev12Success()*100/(double)sla.getSev12())));
				}
				sla.setSev3Fail(sla.getSev3()-sla.getSev3Success());
				if(sla.getSev3Fail() == 0){
					sla.setSev3SuccessRate(100);
				}else{
					sla.setSev3SuccessRate(Utils.roundDecimal((double)sla.getSev3Success()*100/(double)sla.getSev3()));
				}
				sla.setSev4Fail(sla.getSev4()-sla.getSev4Success());
				if(sla.getSev4Fail() == 0){
					sla.setSev4SuccessRate(100);
				}else{
					sla.setSev4SuccessRate(Utils.roundDecimal((double)sla.getSev4Success()*100/(double)sla.getSev4()));
				}
				sla.setSev5Fail(sla.getSev5()-sla.getSev5Success());
				if(sla.getSev5Fail() == 0){
					sla.setSev5SuccessRate(100);
				}else{
					sla.setSev5SuccessRate(Utils.roundDecimal((double)sla.getSev5Success()*100/(double)sla.getSev5()));
				}
				totalSev12 += sla.getSev12();
				totalSev12Success += sla.getSev12Success();
				totalSev12Fail += sla.getSev12Fail();
				totalSev3 += sla.getSev3();
				totalSev3Success += sla.getSev3Success();
				totalSev3Fail += sla.getSev3Fail();
				totalSev4 += sla.getSev4();
				totalSev4Success += sla.getSev4Success();
				totalSev4Fail += sla.getSev4Fail();
				totalSev5 += sla.getSev5();
				totalSev5Success += sla.getSev5Success();
				totalSev5Fail += sla.getSev5Fail();
				
				totalSev12SLA = sla.getSev12SLA();
				totalSev3SLA = sla.getSev3SLA();
				totalSev4SLA = sla.getSev4SLA();
				totalSev5SLA = sla.getSev5SLA();
				
			}
			
			overall.setTeam("Overall");
			overall.setSev12(totalSev12);
			overall.setSev12Success(totalSev12Success);
			overall.setSev12Fail(totalSev12Fail);
			if(overall.getSev12Fail()==0){
				overall.setSev12SuccessRate(100);
			}else{
				overall.setSev12SuccessRate(Utils.roundDecimal((double)overall.getSev12Success()*100/(double)overall.getSev12()));
			}
			overall.setSev12SLA(totalSev12SLA);
			
			overall.setSev3(totalSev3);
			overall.setSev3Success(totalSev3Success);
			overall.setSev3Fail(totalSev3Fail);
			if(overall.getSev3Fail()==0){
				overall.setSev3SuccessRate(100);
			}else{
				overall.setSev3SuccessRate(Utils.roundDecimal((double)overall.getSev3Success()*100/(double)overall.getSev3()));
			}
			overall.setSev3SLA(totalSev3SLA);
			
			overall.setSev4(totalSev4);
			overall.setSev4Success(totalSev4Success);
			overall.setSev4Fail(totalSev4Fail);
			if(overall.getSev4Fail()==0){
				overall.setSev4SuccessRate(100);
			}else{		
				overall.setSev4SuccessRate(Utils.roundDecimal((double)overall.getSev4Success()*100/(double)overall.getSev4()));
			}
			overall.setSev4SLA(totalSev4SLA);
			
			overall.setSev5(totalSev5);
			overall.setSev5Success(totalSev5Success);
			overall.setSev5Fail(totalSev5Fail);
			if(overall.getSev5Fail()==0){
				overall.setSev5SuccessRate(100);
			}else{
				overall.setSev5SuccessRate(Utils.roundDecimal((double)overall.getSev5Success()*100/(double)overall.getSev5()));
			}
			overall.setSev5SLA(totalSev5SLA);
			res.add(0,overall);
			
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
		
	}
	
	
}
