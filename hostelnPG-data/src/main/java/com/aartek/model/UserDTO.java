package com.aartek.model;

import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name = "userdetails")
public class UserDTO {
	@Id
	@GeneratedValue
	@Column(name = "userid")
	private Integer id;
	@Column(name = "firstname")
	private String firsName;
	@Column(name = "lastname")
	private String lastName;
	@Column(name = "email")
	private String emailId;
	@Column(name = "mobile")
	private Long mobile;
	@Column(name = "password")
	private String password;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getFirsName() {
		return firsName;
	}
	public void setFirsName(String firsName) {
		this.firsName = firsName;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public Long getMobile() {
		return mobile;
	}
	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
