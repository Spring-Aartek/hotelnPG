package com.aartek.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.aartek.model.UserRegistration;



@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = Logger.getLogger(LoginInterceptor.class);
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		/*UserRegistration register = (UserRegistration) request.getSession().getAttribute("useruegistration");

		if (register == null || register.equals("")) {
			response.sendRedirect("showlogin.do");
			return false;
		}*/
		
		logger.info("This is preHandle !");
		
		return true;
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}
