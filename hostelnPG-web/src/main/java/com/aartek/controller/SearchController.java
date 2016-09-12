package com.aartek.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aartek.model.Area;
import com.aartek.model.City;
import com.aartek.model.Country;
import com.aartek.model.HostelnPGPost;
import com.aartek.model.UserRegistration;
import com.aartek.service.RegisterService;
import com.aartek.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;

	@Autowired
	private RegisterService regService;

	@RequestMapping("/viewHome")
	public String login(Model model, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("UserRegistration", new UserRegistration());
		model.addAttribute("Country", new Country());
		model.addAttribute("City", new City());
		Map referenceData = new HashMap();

		List countryList = searchService.validateCountryService();
		model.addAttribute("countryList", countryList);
		return "viewHome";
	}

	@ResponseBody
	@RequestMapping(value = "/selectcity", method = RequestMethod.POST)
	public List register(@ModelAttribute("Country") Country country, Map<String, Object> map, Model model,
			@RequestParam(required = false) Integer country_id) throws Exception {
		model.addAttribute("City", new City());
		List cityList = searchService.validateCityService(country_id);
		model.addAttribute("cityList", cityList);
		return cityList;

	}

	@ResponseBody
	@RequestMapping(value = "/getArea", method = RequestMethod.POST)
	public List<Area> getArea(@ModelAttribute("City") City city, Map<String, Object> map, Model model,
			@RequestParam(required = false) Integer city_id) throws Exception {
		model.addAttribute("Area", new Area());
		List<Area> areaList = null;
		System.out.println("City id "+city_id);
		areaList = searchService.validateAreaService(city_id);
		model.addAttribute("areaList", areaList);

		return areaList;

	}

	

	
	@RequestMapping(value = "/SearchResult", method = RequestMethod.POST)
	public  String submitform(@ModelAttribute("UserRegistration") UserRegistration userregistration,
			Map<String, Object> map, Model model,@RequestParam(required = false) String country_name)
			throws Exception {

		System.out.println("Country_Name = "+country_name);
	
	
		
		String [] s=country_name.split(",");
		String city_name=s[1];
		String area_name=s[2];
		
		List<HostelnPGPost> hostelnPGPost = searchService.validateSearchByFilterService(city_name, area_name);
		model.addAttribute("hostelnPGPost", hostelnPGPost);
		
		System.out.println(hostelnPGPost.size());
		
		return "Search";
		
	}
}
