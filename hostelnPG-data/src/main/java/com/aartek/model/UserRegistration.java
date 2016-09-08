package com.aartek.model;


import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.persistence.Entity;

import java.util.List;

import javax.persistence.*;



@Entity
@Table(name = "registration")
@XmlRootElement(name="users")
@XmlAccessorType(XmlAccessType.NONE)
public class UserRegistration {
	@Id
	@GeneratedValue
	@Column(name = "userid")
	@XmlElement(name="Id")
	private Integer id;
	@Column(name = "firstname")
	@XmlElement(name="fname")
	private String firstName;
	@Column(name = "lastname")
	@XmlElement(name="lname")
	private String lastName;
	@Column(name = "email")
	@XmlElement(name="email")
	private String emailId;
	@Column(name = "mobile")
	@XmlElement(name="mobile")
	private String mobile;
	@Column(name = "password")
	private String password;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<UserDetails> userDetails;
	
	
	public List<UserDetails> getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(List<UserDetails> userDetails) {
		this.userDetails = userDetails;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
