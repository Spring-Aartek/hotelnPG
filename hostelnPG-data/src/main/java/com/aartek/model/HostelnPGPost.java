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
	@Column(name = "accommodation_type")
	private String accommodation_type;
	@Column(name = "Country")
	private String country;
	@Column(name = "City")
	private String city;
	@Column(name = "Area")
	private String area;
	
	
	
	
	public String getAccommodation_type() {
		return accommodation_type;
	}
	public void setAccommodation_type(String accommodation_type) {
		this.accommodation_type = accommodation_type;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		area = area;
	}
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
		return accommodation_type;
	}
	public void setPg_gender(String accommodation_type) {
		this.accommodation_type = accommodation_type;
	}
	
	
	
	
}
