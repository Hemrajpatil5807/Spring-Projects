package com.nt.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
	@RequestMapping("/welcome")
	public String greet() {
		return "Welcome to Spring Security Home";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "9822030457";
	}
	
	@RequestMapping("/adr")
	public String adr() {
		return "Pune , Maharashtra";
	}
	
	@RequestMapping("/balance")
	public String balance() {
		return "98000.00";
	}
	

}
