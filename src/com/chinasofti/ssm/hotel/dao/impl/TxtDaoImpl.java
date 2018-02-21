package com.chinasofti.ssm.hotel.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.hotel.dao.TxtDao;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.entity.Txt;
@Repository
public class TxtDaoImpl implements TxtDao {
  @Autowired
  private SqlSessionTemplate sqlSessionTemplate;
	
  int i=0;
	@Override
	public List<Txt> txtshow() {
		List<Txt> txtlist=this.sqlSessionTemplate.selectList("txtMapper.txtshow");
		return txtlist;
	}

	@Override
	public boolean txtdel(Txt txt) {
		i=this.sqlSessionTemplate.delete("txtMapper.txtdel",txt);
		System.out.println("i"+i);
		if(i==1){
			return true;
		}
		return false;
	}

	@Override
	public boolean txtdelAll(int txt) {
		i=this.sqlSessionTemplate.delete("txtMapper.txtdel",txt);
		if(i!=0){
			return true;
		}
		return false;
	}

	@Override
	public List<Check> Newshow() {
		List<Check> checklist=this.sqlSessionTemplate.selectList("txtMapper.newshow");
		return checklist;
	}

	@Override
	public List<EUser> Usershow() {
		// TODO Auto-generated method stub
		List<EUser> userlist=this.sqlSessionTemplate.selectList("txtMapper.usershow");
		return userlist;
	}

	@Override
	public List<EUser> Usertoupdate(EUser euser) {
		// TODO Auto-generated method stub
		List<EUser> uslist=this.sqlSessionTemplate.selectList("txtMapper.Usertoupdate",euser);
		if(uslist.size()==1){
			return uslist;
			
		}
		return null;
	}

	@Override
	public boolean Userupdate(EUser euser) {
		i=this.sqlSessionTemplate.update("txtMapper.Userupdate", euser);
		if(i==1){
			return true;
		}
		return false;
	}

}
