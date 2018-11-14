package org.comstudy21.hobbygo.framework;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModelAndView {
	private String viewName;

	public ModelAndView() {}
	public ModelAndView(String viewName) {
		this.viewName = viewName;
	}
	
	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	
	public void forward(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(viewName.indexOf("redirect:") == -1) {
			RequestDispatcher view = req.getRequestDispatcher(viewName);
			view.forward(req, resp);
		} else {
			resp.sendRedirect(viewName.substring("redirect:".length()));
		}
	}

}
