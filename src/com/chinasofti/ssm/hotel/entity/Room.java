package com.chinasofti.ssm.hotel.entity;

public class Room {
	private Integer id;
	private String uuid;// 编号
	private String room_id;// 房号
	private String state;// 状态
	private Room_xx roomxx;// 房间类型

	public Room_xx getRoomxx() {
		return roomxx;
	}

	public void setRoomxx(Room_xx roomxx) {
		this.roomxx = roomxx;
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

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Room(String uuid, String room_id, String state) {
		super();
		this.uuid = uuid;
		this.room_id = room_id;
		this.state = state;
	}

	public Room(Integer id, String uuid, String room_id, String state,
			Room_xx roomxx) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.room_id = room_id;
		this.state = state;
		this.roomxx = roomxx;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", uuid=" + uuid + ", room_id=" + room_id
				+ ", state=" + state + ", roomxx=" + roomxx + "]";
	}

	public Room() {
		super();
	}

}
