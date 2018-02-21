package com.chinasofti.ssm.hotel.entity;

public class Room_xx {
	private Integer id ;
	private String uuid;//客房信息编号
	private String room_name;//房间名称
	private String price;//房间价格
	private String number;//床位
	private String window;//有无窗户
	private String wc;//卫生间
	private String imp;//房间图片

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
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getWindow() {
		return window;
	}
	public void setWindow(String window) {
		this.window = window;
	}
	public String getWc() {
		return wc;
	}
	public void setWc(String wc) {
		this.wc = wc;
	}
	public String getImp() {
		return imp;
	}
	public void setImp(String imp) {
		this.imp = imp;
	}
	public Room_xx() {
		super();
	}
	public Room_xx(String uuid, String room_name, String price, String number,
			String window, String wc, String imp) {
		super();
		this.uuid = uuid;
		this.room_name = room_name;
		this.price = price;
		this.number = number;
		this.window = window;
		this.wc = wc;
		this.imp = imp;
		
	}
	@Override
	public String toString() {
		return "Room_xx [id=" + id + ", uuid=" + uuid + ", room_name="
				+ room_name + ", price=" + price + ", number=" + number
				+ ", window=" + window + ", wc=" + wc + ", imp=" + imp
				+ "]";
	}

}

