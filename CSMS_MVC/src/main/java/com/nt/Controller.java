package com.nt;

import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.stereotype.Controller
public class Controller {
	
	@GetMapping("/")
	public String indexPage() {
		return "index";
	}
	
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/loginPage")
	public String loginPage() {
		return "login";
	}
	
	@GetMapping("/registerPage")
	public String registerPage() {
		return "register";
	}
	
	@GetMapping("/admindash")
	public String dashboardPage() {
		return "admin/admindash";
	}
	
	@GetMapping("/adduser")
	public String adduserPage() {
		return "admin/adduser";
	}
	
//	@GetMapping("/manageusers")
//	public String usersPage() {
//		return "admin/users/user";
//	}
//	
	
	
}
