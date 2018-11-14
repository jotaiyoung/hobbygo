package org.comstudy21.hobbygo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class SaramFilter implements Filter {
	
	private ServletContext context;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		String reqUri = req.getRequestURI();
		String ctxPath = req.getContextPath();
		context.log(reqUri);
		context.log(ctxPath);
		int beginIndex = ctxPath.length();
		String path = reqUri.substring(beginIndex);
		request.setAttribute("path", path);
		
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		chain.doFilter(req, resp);
	}

	@Override
	public void init(FilterConfig fc) throws ServletException {
		context = fc.getServletContext();
	}

}
