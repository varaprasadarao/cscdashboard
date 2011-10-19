package com.csc.dashboard.dao;

import java.sql.SQLException;

import com.csc.dashboard.domain.User;

public interface UserDao {
	
	User getUser(String userId);
	
	public String getUserName(String user) throws SQLException;


}
