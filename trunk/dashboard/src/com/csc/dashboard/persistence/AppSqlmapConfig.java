package com.csc.dashboard.persistence;

import java.io.Reader;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class AppSqlmapConfig {

	private static final SqlMapClient sqlMap;
	
	static{
		try{
			String resource = "../sql-map-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("Error initializing class. Cause : "+e);
		}
	}
	
	public static SqlMapClient getSqlMapInstance(){
		return sqlMap;
	}
}