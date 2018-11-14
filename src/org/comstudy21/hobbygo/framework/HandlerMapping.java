package org.comstudy21.hobbygo.framework;

import java.util.HashMap;
import java.util.Map;

import org.comstudy21.hobbygo.controller.*;

public class HandlerMapping {
	private Map<String, Controller> mappings = new HashMap<>();
	
	public HandlerMapping() {
		mappings.put("", new HomeController());
	}
	
	public Controller getController(String path) {
		String key = path.substring(0, path.lastIndexOf("/"));
		System.out.println("key>>> " + key);
		return mappings.get(key);
	}
}
