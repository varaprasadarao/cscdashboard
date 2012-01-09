package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.Account;
import com.csc.dashboard.domain.User;
import com.csc.dashboard.domain.Vertical;

public interface UserDao {
	
	public User getUser(String userId) throws SQLException;
	
	public String getUserName(String user) throws SQLException;

	public List<Account> getAccount(String accounts) throws SQLException;
	
	public List<Vertical> getVertical(String accounts) throws SQLException;
}
