package com.chinasofti.ssm.hotel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.hotel.dao.TxtDao;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.entity.Txt;
import com.chinasofti.ssm.hotel.service.TxtService;
@Service
public class TxtServiceImpl implements TxtService {
@Autowired
TxtDao txtdao;
	@Override
	public List<Txt> txtshow() {
		// TODO Auto-generated method stub
		return txtdao.txtshow();
	}
	@Override
	public boolean txtdel(Txt txt) {
		// TODO Auto-generated method stub
		return txtdao.txtdel(txt);
	}
	@Override
	public boolean txtdelAll(int txt) {
		// TODO Auto-generated method stub
		return txtdao.txtdelAll(txt);
	}
	@Override
	public List<Check> Newshow() {
		// TODO Auto-generated method stub
		return txtdao.Newshow();
	}
	@Override
	public List<EUser> Usershow() {
		// TODO Auto-generated method stub
		return txtdao.Usershow();
	}
	@Override
	public List<EUser> Usertoupdate(EUser euser) {
		// TODO Auto-generated method stub
		return txtdao.Usertoupdate(euser);
	}
	@Override
	public boolean Userupdate(EUser euser) {
		// TODO Auto-generated method stub
		return txtdao.Userupdate(euser);
	}

}
