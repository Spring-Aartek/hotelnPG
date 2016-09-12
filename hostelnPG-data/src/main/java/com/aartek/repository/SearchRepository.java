package com.aartek.repository;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.model.Area;
import com.aartek.model.City;
import com.aartek.model.Country;
import com.aartek.model.HostelnPGPost;
import com.aartek.model.UserRegistration;

@Repository
public class SearchRepository {

	
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public List<Country> searchCountryRepository() {
		
		List<Country> countryList ;
		
		countryList = hibernateTemplate.find("from Country");

			return countryList;

		
	
	}

	public List<City> searchCityRepository(Integer id) {
	List<City> cityList ;
		System.out.println("id ="+id);
	cityList = hibernateTemplate.find("from City where country_id=?",id);

			return cityList;

	}

	
	public List<Area> searchAreaRepository(Integer id) {
	    List<Area> areaList ;
		System.out.println("id ="+id);
	    areaList = hibernateTemplate.find("from Area where city_id=?",id);
	    
        return areaList;

	}
	
	
	public List<HostelnPGPost> searchbyFilterRepository(String city,String area) {
		List<HostelnPGPost> hostelnPGPost ;
			
		Integer cityid=Integer.parseInt(city);
		Integer areaid=Integer.parseInt(area);
		
		
		List  cityName = hibernateTemplate.find("select city_name FROM City  where city_id=?",cityid);

		
		System.out.println("List Value = "+cityName.get(0).toString());
		
		String city_name=(String)cityName.get(0).toString();
		System.out.println();
		
		List  areaName = hibernateTemplate.find("select area_name FROM Area  where area_id=?",areaid);

		
		System.out.println("List Value = "+areaName.get(0).toString());
		
		String area_name=(String)areaName.get(0).toString();
		
		
		
			hostelnPGPost = hibernateTemplate.find("FROM HostelnPGPost where city=? AND area=?",city_name,area_name);

				return hostelnPGPost;

		}

	
	
}
