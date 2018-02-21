package com.chinasofti.ssm.hotel.service;


import java.util.List;
import java.util.Map;

import com.chinasofti.ssm.hotel.entity.Account;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;

public interface IUserService {
	public List<EUser> userlogin(EUser euser);
	public List<Check> checkshow();
	public List<Account> accountshow();
}
