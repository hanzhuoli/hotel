package com.chinasofti.ssm.hotel.entity;

public class Reserve {
	private Integer id;
	private String uuid; // Ԥ������
	private String start_time; // ��ʼʱ��
	private String finish_time; // ����ʱ��
	private String re_time; // Ԥ��ʱ��
	private String state; // ״̬
	private EUser euser;// �û����
	private Room room;// ������

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

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getFinish_time() {
		return finish_time;
	}

	public void setFinish_time(String finish_time) {
		this.finish_time = finish_time;
	}

	public String getRe_time() {
		return re_time;
	}

	public void setRe_time(String re_time) {
		this.re_time = re_time;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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
		return "Reserve [id=" + id + ", uuid=" + uuid + ", start_time="
				+ start_time + ", finish_time=" + finish_time + ", re_time="
				+ re_time + ", state=" + state + ", euser=" + euser + ", room="
				+ room + "]";
	}

	public Reserve(Integer id, String uuid, String start_time,
			String finish_time, String re_time, String state, EUser euser,
			Room room) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.start_time = start_time;
		this.finish_time = finish_time;
		this.re_time = re_time;
		this.state = state;
		this.euser = euser;
		this.room = room;
	}

	public Reserve() {
		super();
	}

}
