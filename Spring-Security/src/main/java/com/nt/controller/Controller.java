package com.nt.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
	@RequestMapping("/")
	public String greet() {
		return "Welcome to Spring Security";
	}
	
	  
	

}
