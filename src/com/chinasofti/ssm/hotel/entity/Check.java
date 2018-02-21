package com.chinasofti.ssm.hotel.entity;

public class Check {
	private Integer id;
	private String uuid; // 入住表编号
	private String in_time; // 入住时间
	private String out_time; // 离开时间
	private String yjout_time;//预计时间
	private String pay; // 支付方式
	private String people; // 人数
	private String re_money; // 押金
	private String room_money;// 房费
	private String yy_zt; // 预约状态
	private String remark; // 备注
	private EUser euser;// 用户编号
	private Room room;// 房间编号
	
    
	public String getYjout_time() {
		return yjout_time;
	}

	public void setYjout_time(String yjout_time) {
		this.yjout_time = yjout_time;
	}

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

	public String getIn_time() {
		return in_time;
	}

	public void setIn_time(String in_time) {
		this.in_time = in_time;
	}

	public String getOut_time() {
		return out_time;
	}

	public void setOut_time(String out_time) {
		this.out_time = out_time;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getPeople() {
		return people;
	}

	public void setPeople(String people) {
		this.people = people;
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

	public String getYy_zt() {
		return yy_zt;
	}

	public void setYy_zt(String yy_zt) {
		this.yy_zt = yy_zt;
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

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}



	@Override
	public String toString() {
		return "Check [id=" + id + ", uuid=" + uuid + ", in_time=" + in_time
				+ ", out_time=" + out_time + ", yjout_time=" + yjout_time
				+ ", pay=" + pay + ", people=" + people + ", re_money="
				+ re_money + ", room_money=" + room_money + ", yy_zt=" + yy_zt
				+ ", remark=" + remark + ", euser=" + euser + ", room=" + room
				+ "]";
	}



	public Check(Integer id, String uuid, String in_time, String out_time,
			String yjout_time, String pay, String people, String re_money,
			String room_money, String yy_zt, String remark) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.in_time = in_time;
		this.out_time = out_time;
		this.yjout_time = yjout_time;
		this.pay = pay;
		this.people = people;
		this.re_money = re_money;
		this.room_money = room_money;
		this.yy_zt = yy_zt;
		this.remark = remark;
	}

	public Check() {
		super();
	}

}
