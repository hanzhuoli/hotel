package com.chinasofti.ssm.hotel.entity;

public class ShangPin {
	private Integer id;
	private String uuid; // 商品表编号
	private String sp_name; // 商品名称
	private String sp_price; // 商品价格
	private String sp_number; // 商品库存

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

	public String getSp_name() {
		return sp_name;
	}

	public void setSp_name(String sp_name) {
		this.sp_name = sp_name;
	}

	public String getSp_price() {
		return sp_price;
	}

	public void setSp_price(String sp_price) {
		this.sp_price = sp_price;
	}

	public String getSp_number() {
		return sp_number;
	}

	public void setSp_number(String sp_number) {
		this.sp_number = sp_number;
	}

	@Override
	public String toString() {
		return "ShangPin [id=" + id + ", uuid=" + uuid + ", sp_name=" + sp_name
				+ ", sp_price=" + sp_price + ", sp_number=" + sp_number + "]";
	}

	public ShangPin(Integer id, String uuid, String sp_name, String sp_price,
			String sp_number) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.sp_name = sp_name;
		this.sp_price = sp_price;
		this.sp_number = sp_number;
	}

	public ShangPin() {
		super();
	}

}
