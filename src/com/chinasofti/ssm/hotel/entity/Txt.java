package com.chinasofti.ssm.hotel.entity;

public class Txt {
	private Integer id;
	private String uuid; // 评论表编号
	private String txt_context; // 评论内容
	private String txt_date; // 评论时间
	private String txt_star; // 评论星级

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getTxt_context() {
		return txt_context;
	}

	public void setTxt_context(String txt_context) {
		this.txt_context = txt_context;
	}

	public String getTxt_date() {
		return txt_date;
	}

	public void setTxt_date(String txt_date) {
		this.txt_date = txt_date;
	}

	public String getTxt_star() {
		return txt_star;
	}

	public void setTxt_star(String txt_star) {
		this.txt_star = txt_star;
	}

	@Override
	public String toString() {
		return "Txt [id=" + id + ", uuid=" + uuid + ", txt_context="
				+ txt_context + ", txt_date=" + txt_date + ", txt_star="
				+ txt_star + "]";
	}

	public Txt(Integer id, String uuid, String txt_context, String txt_date,
			String txt_star) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.txt_context = txt_context;
		this.txt_date = txt_date;
		this.txt_star = txt_star;
	}

	public Txt() {
		super();
	}

}
