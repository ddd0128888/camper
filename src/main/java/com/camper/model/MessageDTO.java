package com.camper.model;

import lombok.Data;

@Data
public class MessageDTO {
	
	private String no;
	private int room;
	private String send_nick;
	private String recv_nick;
	private String content;
	private String read_time;
	private String send_time;
	private String read_chk;
	
	// 현재 사용자의 메세지 상대 nick을 담는다.
	private String other_nick;
	
	// 현재 사용자의 메세지 상대 profile을 담는다.
	private String profile;
	
	// 현재 사용자 nick
	private String nick;
	
	// 안읽은 메세지 갯수 
	private int unread;

}
