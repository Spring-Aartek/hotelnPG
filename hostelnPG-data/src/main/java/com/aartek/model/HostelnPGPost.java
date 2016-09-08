package com.aartek.model;

import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;

@Entity
@Table(name="hostelnpg")
public class HostelnPGPost {

	
	@Id
	@GeneratedValue
	@Column(name = "hostel_id")
	private Integer id;
	@Column(name = "hostel_name")
	private String hostel_name;
	@Column(name = "sharing_type")
	private String sharing_type;
	@Column(name = "hostel_gender")
	private String hostel_gender;
	@Column(name = "pg_gender")
	private String pg_gender;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getHostel_name() {
		return hostel_name;
	}
	public void setHostel_name(String hostel_name) {
		this.hostel_name = hostel_name;
	}
	public String getSharing_type() {
		return sharing_type;
	}
	public void setSharing_type(String sharing_type) {
		this.sharing_type = sharing_type;
	}
	public String getHostel_gender() {
		return hostel_gender;
	}
	public void setHostel_gender(String hostel_gender) {
		this.hostel_gender = hostel_gender;
	}
	public String getPg_gender() {
		return pg_gender;
	}
	public void setPg_gender(String pg_gender) {
		this.pg_gender = pg_gender;
	}
	
	
	
	
}
