package org.comstudy21.hobbygo.framework;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HandlerMapping handlerMapping = new HandlerMapping();

	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = (String)req.getAttribute("path");
		System.out.println("path>>> " +path);
		
		Controller ctrl = handlerMapping.getController(path);
		System.out.println("ctrl >>> " + ctrl);
		
		ModelAndView mav = ctrl.handleRequest(req, resp);
		mav.forward(req, resp);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
