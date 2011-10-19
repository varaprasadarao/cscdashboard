package com.csc.dashboard.service;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.dao.UserDao;
import com.csc.dashboard.dao.UserDaoImpl;
import com.csc.dashboard.domain.UserInfoVO;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

import flex.messaging.FlexContext;

public class UserInfoService {

	UserDao userDao = new UserDaoImpl();
	
	public List<UserInfoVO> getData() throws SQLException{
		
		
	
		
		
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		List<UserInfoVO> uv = (List<UserInfoVO>)sqlMap.queryForList("getUserList");
		
		return uv;
	}
	
	
	public String getUserName() throws SQLException{
		
		String user = FlexContext.getFlexSession().getUserPrincipal().getName();
		return userDao.getUserName(user);
		
	}
	
}
