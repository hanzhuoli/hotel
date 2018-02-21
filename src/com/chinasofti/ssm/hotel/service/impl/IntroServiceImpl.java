package com.chinasofti.ssm.hotel.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.hotel.dao.IntroDao;
import com.chinasofti.ssm.hotel.entity.Intro;
import com.chinasofti.ssm.hotel.service.IntroService;
@Service
public class IntroServiceImpl implements IntroService {
@Autowired
IntroDao introdao;
	@Override
	public List<Intro> Introshow() {
		// TODO Auto-generated method stub
		return introdao.Introshow();
	}
	@Override
	public boolean Introadd(Intro intro) {
		// TODO Auto-generated method stub
		return introdao.Introadd(intro);
	}
	@Override
	public List<Intro> intrushow(Intro intro) {
		return introdao.intrushow(intro);
	}
	@Override
	public boolean Introtoupdate(Intro intro) {
		// TODO Auto-generated method stub
		return introdao.Introtoupdate(intro);
	}
	@Override
	public boolean del(Intro intro) {
		// TODO Auto-generated method stub
		return introdao.del(intro);
	}
	@Override
	public boolean delAll(int ckkk) {
		// TODO Auto-generated method stub
		return introdao.delAll(ckkk);
	}
	@Override
	public boolean uupdate(Intro intro) {
		// TODO Auto-generated method stub
		return introdao.uupdate(intro);
	}
	
	

}
