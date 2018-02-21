package com.chinasofti.ssm.hotel.entity;

public class ShangPinSell {
	private Integer id;
	private String uuid; // ��Ʒ���۱���
	private String sell_time; // ��Ʒ�۳�ʱ��
	private String sell_number; // ��Ʒ�۳�����
	private ShangPin shangpin;// ��Ʒ���

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
