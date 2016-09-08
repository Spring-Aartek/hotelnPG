package com.aartek.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.servlet.mvc.AbstractController;

import com.aartek.model.UserDTO;
import com.aartek.model.UserRegistration;
import com.aartek.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;

	private static Logger logger=Logger.getRootLogger();
	/*
	 * @RequestMapping("/showlogin") public String message(Map<String, Object>
	 * map) { map.put("UserDTO", new UserDTO());
	 * 
	 * return "login"; }
	 */
	@RequestMapping("/basic")
	public String basic(Model model,HttpServletRequest request, HttpServletResponse response) {
	
		return "basic";
	}
	@RequestMapping("/showlogin")
	public String login(Model model,HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("UserRegistration", new UserRegistration());
		/* logger.info("logger is initialised check file is created is not");
		//logs debug message
			if(logger.isDebugEnabled()){
				logger.debug("getWelcome is executed!");
			}
			

			//logs exception
			logger.error("This is Error message", new Exception("Testing"));
		*/
		return "login";
	}

	@RequestMapping("/verifylogin")
	public String verifylogin(@ModelAttribute("UserRegistration") UserRegistration userregistration,HttpServletRequest request, HttpServletResponse response,Model model) {
		List<UserRegistration> validateLogin = null;
		HttpSession session = request.getSession();
		session.setAttribute("userregistration", userregistration);
		
		
		
		validateLogin = loginservice.validateService(userregistration);
		
		if (validateLogin != null)
		{
			
			model.addAttribute("loginMember", validateLogin.get(0).getEmailId());
			return "welcome";
}
		else {
			System.out.println("login invalidate");
			
			
			return "login";
		}
	}
	@RequestMapping(method = RequestMethod.GET, value="/{id}")
	 public @ResponseBody UserRegistration getUserById(@PathVariable String id){
		UserRegistration user = new UserRegistration();
		user.setId(1);
		user.setFirstName("Abhi");
		user.setLastName("chouhan");
		user.setMobile("1790214570");
		user.setEmailId("Email@gmail.com");
	  return user;
	 }

	
}
