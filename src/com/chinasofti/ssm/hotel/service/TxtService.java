package com.chinasofti.ssm.hotel.service;

import java.util.List;

import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.entity.Txt;

public interface TxtService {
	public List<Txt> txtshow();
	public boolean txtdel(Txt txt);
	public boolean txtdelAll(int txt);
	public List<Check> Newshow();
	public List<EUser> Usershow();
	public List<EUser> Usertoupdate(EUser euser);
	public boolean Userupdate(EUser euser);

}
