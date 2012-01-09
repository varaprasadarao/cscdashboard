package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.Account;
import com.csc.dashboard.domain.User;
import com.csc.dashboard.domain.UserInfoVO;
import com.csc.dashboard.domain.Vertical;
import com.csc.dashboard.persistence.AppSqlmapConfig;
import com.ibatis.sqlmap.client.SqlMapClient;

public class UserDaoImpl implements UserDao {

	public User getUser(String userId) throws SQLException {
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return (User)sqlMap.queryForObject("getUser",userId);
	}

	public String getUserName(String user) throws SQLException{
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return (String)sqlMap.queryForObject("getUserName",user);
	}

	public List<Account> getAccount(String accounts) throws SQLException {
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return sqlMap.queryForList("getAccounts",accounts);
	}

	public List<Vertical> getVertical(String accounts) throws SQLException {
		SqlMapClient sqlMap = AppSqlmapConfig.getSqlMapInstance();
		return sqlMap.queryForList("getVerticals",accounts);
	}

}
