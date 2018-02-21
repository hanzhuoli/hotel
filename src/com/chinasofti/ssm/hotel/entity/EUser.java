package com.chinasofti.ssm.hotel.entity;

public class EUser {
	private Integer uid;
	private String uuid; // 用户表编号
	private String user_name; // 姓名
	private String idcard; // 身份证号
	private String password; // 密码
	private String phone; // 手机号
	private String power; // 客户类型

	

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}



	@Override
	public String toString() {
		return "EUser [uid=" + uid + ", uuid=" + uuid + ", user_name="
				+ user_name + ", idcard=" + idcard + ", password=" + password
				+ ", phone=" + phone + ", power=" + power + "]";
	}

	public EUser(Integer uid, String uuid, String user_name, String idcard,
			String password, String phone, String power) {
		super();
		this.uid = uid;
		this.uuid = uuid;
		this.user_name = user_name;
		this.idcard = idcard;
		this.password = password;
		this.phone = phone;
		this.power = power;
	}

	public EUser() {
		super();
	}

}
