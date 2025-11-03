package com.test.project.model;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserDTO {
	
	private String id;
	private String name;
	private String pw;
	private String email;
	private String age;
	private String regdate;
	private String auth;
	
	

}
