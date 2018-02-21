package com.chinasofti.ssm.hotel.dao.impl;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chinasofti.ssm.hotel.dao.IUserDao;
import com.chinasofti.ssm.hotel.entity.Account;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
@Repository
public class UserDaoImpl implements IUserDao {
	private int i=0;
	private boolean flag=false;
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	

	

	
}
