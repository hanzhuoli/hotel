package com.chinasofti.ssm.hotel.entity;

public class Intro {
	private int id;
	private String uuid;
	
	private String introname;//¾ÆµêÃû×Ö
	
	private String intro_text;   //¼ò½éÄÚÈÝ
    private String img;
    
	public String getIntroname() {
		return introname;
	}

	public void setIntroname(String introname) {
		this.introname = introname;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getIntro_text() {
		return intro_text;
	}

	public void setIntro_text(String intro_text) {
		this.intro_text = intro_text;
	}

	public Intro() {
		super();
	}

	public Intro(String uuid, String introname, String intro_text, String img) {
		super();
		this.uuid = uuid;
		this.introname = introname;
		this.intro_text = intro_text;
		this.img = img;
	}

	@Override
	public String toString() {
		return "Intro [id=" + id + ", uuid=" + uuid + ", introname="
				+ introname + ", intro_text=" + intro_text + ", img=" + img
				+ "]";
	}

	
	

}
