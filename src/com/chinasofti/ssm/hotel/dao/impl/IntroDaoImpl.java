package com.chinasofti.ssm.hotel.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chinasofti.ssm.hotel.dao.IntroDao;
import com.chinasofti.ssm.hotel.entity.Intro;
@Repository
public class IntroDaoImpl implements IntroDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
   
	int i=0;
	boolean flag=true;
	@Override
	public List<Intro> Introshow() {
		List<Intro> Introlist=this.sqlSessionTemplate.selectList("introMapper.Introshow");
		
		return Introlist;
	}

	@Override
	public boolean Introadd(Intro intro) {
		// TODO Auto-generated method stub
		i=this.sqlSessionTemplate.insert("introMapper.Introadd",intro);
		
		if(i==1){
			return true;
		}
		return false;
		
	}

	@Override
	public List<Intro> intrushow(Intro intro) {
		// TODO Auto-generated method stub
		
		List<Intro>  list=this.sqlSessionTemplate.selectList("introMapper.intrushow",intro);
		
		if(list.size()==1){
			return list ;
		}
		return null;
	}

	@Override
	public boolean Introtoupdate(Intro intro) {
		System.out.println(intro);
		i=this.sqlSessionTemplate.update("introMapper.introupdate",intro);
		System.out.println(12333333);
		System.out.println(i);
		if(i==1){
			return true;
		}
		return false;
	}

	@Override
	public boolean del(Intro intro) {
		i=this.sqlSessionTemplate.delete("introMapper.del", intro);
		if(i==1){
			return true;
		}
		return false;
	}

	@Override
	public boolean delAll(int ckkk) {
		// TODO Auto-generated method stub
			i=this.sqlSessionTemplate.delete("introMapper.deleAll",ckkk);
			if(i!=0){
				return true;
			}
		
		return false;
	}

	@Override
	public boolean uupdate(Intro intro) {
		// TODO Auto-generated method stub
		i=this.sqlSessionTemplate.update("introMapper.update",intro);
		if(i==1){
			return true;
		}
		return false;
	}

}
