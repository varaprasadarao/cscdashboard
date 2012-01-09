package com.csc.dashboard.domain;

import java.io.Serializable;
import java.util.List;

public class UserInfoVO implements Serializable {

	public String username;
	public String name;
	public String authority;
	public String accountIds;
	public List<Account> accounts;
	public List<Vertical> verticals;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getAccountIds() {
		return accountIds;
	}
	public void setAccountIds(String accountIds) {
		this.accountIds = accountIds;
	}
	public List<Account> getAccounts() {
		return accounts;
	}
	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	public List<Vertical> getVerticals() {
		return verticals;
	}
	public void setVerticals(List<Vertical> verticals) {
		this.verticals = verticals;
	}
	
	
}
