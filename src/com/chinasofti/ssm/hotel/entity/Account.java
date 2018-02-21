package com.chinasofti.ssm.hotel.entity;

public class Account {
	private Integer id;
	private String uuid; // 账目表编号
	private String date; // 实际退房时间
	private String out_money; // 退金
	private String re_money; // 押金
	private String room_money; // 房费
	private String sp_sell; // 商品消费金额
	private String kesun; // 客损费用
	private String remark; // 备注
	private EUser euser;// 用户编号

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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOut_money() {
		return out_money;
	}

	public void setOut_money(String out_money) {
		this.out_money = out_money;
	}

	public String getRe_money() {
		return re_money;
	}

	public void setRe_money(String re_money) {
		this.re_money = re_money;
	}

	public String getRoom_money() {
		return room_money;
	}

	public void setRoom_money(String room_money) {
		this.room_money = room_money;
	}

	public String getSp_sell() {
		return sp_sell;
	}

	public void setSp_sell(String sp_sell) {
		this.sp_sell = sp_sell;
	}

	public String getKesun() {
		return kesun;
	}

	public void setKesun(String kesun) {
		this.kesun = kesun;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public EUser getEuser() {
		return euser;
	}

	public void setEuser(EUser euser) {
		this.euser = euser;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", uuid=" + uuid + ", date=" + date
				+ ", out_money=" + out_money + ", re_money=" + re_money
				+ ", room_money=" + room_money + ", sp_sell=" + sp_sell
				+ ", kesun=" + kesun + ", remark=" + remark + ", euser="
				+ euser + "]";
	}

	public Account(Integer id, String uuid, String date, String out_money,
			String re_money, String room_money, String sp_sell, String kesun,
			String remark, EUser euser) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.date = date;
		this.out_money = out_money;
		this.re_money = re_money;
		this.room_money = room_money;
		this.sp_sell = sp_sell;
		this.kesun = kesun;
		this.remark = remark;
		this.euser = euser;
	}

	public Account() {
		super();
	}

}
