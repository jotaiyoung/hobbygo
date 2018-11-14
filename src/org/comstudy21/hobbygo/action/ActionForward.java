package org.comstudy21.hobbygo.action;

public class ActionForward {
	private String viewName;
	private boolean isRedirect = false;
	
	public ActionForward() {   }

	public ActionForward(String viewName, boolean isRedirect) {
		this.viewName = viewName;
		this.isRedirect = isRedirect;
	}
	
	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
}
