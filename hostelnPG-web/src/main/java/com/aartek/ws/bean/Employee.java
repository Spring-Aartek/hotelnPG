package com.aartek.ws.bean;

import org.springframework.stereotype.Component;

@Component
public class Employee {

	private String name;
	private String lname;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	
}
