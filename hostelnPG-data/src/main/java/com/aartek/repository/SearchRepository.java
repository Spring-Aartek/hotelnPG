package com.aartek.repository;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.model.City;
import com.aartek.model.Country;
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

}
