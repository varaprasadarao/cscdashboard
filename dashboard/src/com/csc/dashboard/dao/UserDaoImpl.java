package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.User;
import com.csc.dashboard.domain.UserInfoVO;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class UserDaoImpl implements UserDao {

	public User getUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getUserName(String user) throws SQLException{
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return (String)sqlMap.queryForObject("getUserName",user);
	}

}
