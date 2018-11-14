package org.comstudy21.hobbygo.framework;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse resp);
}
