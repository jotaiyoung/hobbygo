package org.comstudy21.hobbygo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.comstudy21.hobbygo.framework.Controller;
import org.comstudy21.hobbygo.framework.ModelAndView;


public class HomeController implements Controller {

	@Override
	public org.comstudy21.hobbygo.framework.ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("/WEB-INF/views/home.jsp");
		
		return mav;
	}

}
