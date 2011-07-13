package com.csc.dashboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc.dashboard.domain.User;
import com.csc.dashboard.persistence.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public User getUser(){
		return userMapper.getUser();
	}
}
