package com.chinasofti.ssm.hotel.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.ssm.hotel.dao.IUserDao;
import com.chinasofti.ssm.hotel.entity.Account;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.service.IUserService;
@Service
public class UserServiceImpl implements IUserService {
	//×¢ÈëDAO
	@Autowired
	IUserDao iUserDao;

	@Override
	public List<EUser> userlogin(EUser euser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Check> checkshow() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Account> accountshow() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
