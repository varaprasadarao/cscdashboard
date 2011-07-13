package com.csc.dashboard.service;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.UserInfoVO;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class UserInfoService {

	public List<UserInfoVO> getData() throws SQLException{
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<UserInfoVO> uv = (List<UserInfoVO>)sqlMap.queryForList("getUserList");
		
		return uv;
	}
}
