package com.csc.dashboard.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.csc.dashboard.domain.User;

public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

    public User getUser(String userId) {
        return (User) getSqlSession().selectOne("org.mybatis.spring.sample.dao.UserDao.getUser", userId);
    }

}

