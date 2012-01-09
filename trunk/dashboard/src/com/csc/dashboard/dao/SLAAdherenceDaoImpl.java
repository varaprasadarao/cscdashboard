package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csc.dashboard.domain.BillingEfficiency;
import com.csc.dashboard.domain.SLAAdherence;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class SLAAdherenceDaoImpl implements SLAAdherenceDao {

	public List<SLAAdherence> getSLAAdherence(int account, int month, int year) throws SQLException {
		Map parameters = new HashMap();
		parameters.put("account", account);
		parameters.put("month", year*12 + month - 1);
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<SLAAdherence> li = (List<SLAAdherence>)sqlMap.queryForList("getSLAAdherence" , parameters);
		return li;
	}

	
}
