package org.comstudy21.hobbygo.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;

}
