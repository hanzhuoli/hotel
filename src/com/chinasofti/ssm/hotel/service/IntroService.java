package com.chinasofti.ssm.hotel.service;

import java.util.List;
import java.util.Map;

import com.chinasofti.ssm.hotel.entity.Intro;

public interface IntroService {
	public List<Intro> Introshow();
	public boolean Introadd(Intro intro);
	public List<Intro>  intrushow(Intro intro);
	public boolean Introtoupdate(Intro intro);
	public boolean del(Intro intro);
	public boolean delAll(int ckkk);
	public boolean uupdate(Intro intro);
}
