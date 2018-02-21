package com.chinasofti.ssm.hotel.entity;

public class ShangPinSell {
	private Integer id;
	private String uuid; // 商品销售表编号
	private String sell_time; // 商品售出时间
	private String sell_number; // 商品售出数量
	private ShangPin shangpin;// 商品编号

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

	public String getSell_time() {
		return sell_time;
	}

	public void setSell_time(String sell_time) {
		this.sell_time = sell_time;
	}

	public String getSell_number() {
		return sell_number;
	}

	public void setSell_number(String sell_number) {
		this.sell_number = sell_number;
	}

	public ShangPin getShangpin() {
		return shangpin;
	}

	public void setShangpin(ShangPin shangpin) {
		this.shangpin = shangpin;
	}

	@Override
	public String toString() {
		return "ShangPinSell [id=" + id + ", uuid=" + uuid + ", sell_time="
				+ sell_time + ", sell_number=" + sell_number + ", shangpin="
				+ shangpin + "]";
	}

	public ShangPinSell(Integer id, String uuid, String sell_time,
			String sell_number, ShangPin shangpin) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.sell_time = sell_time;
		this.sell_number = sell_number;
		this.shangpin = shangpin;
	}

	public ShangPinSell() {
		super();
	}

}
