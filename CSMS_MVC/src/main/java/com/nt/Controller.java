package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.entity.Sites;
import com.nt.service.SitesService;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	SitesService sitesService;
	
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

//	@GetMapping("/managesites")
//	public String usersPage() {
//		return "admin/sites/site";
//	}
	
//	@GetMapping("/manageexpenses")
//	public String expensePage() {
//		return "admin/expenses/expense";
//	}
	
	@RequestMapping("/managerdash")
	public String managerdashPage( Model model) {
		int userId = (int) model.getAttribute("userId");
		System.out.println(userId);
		List<Sites> sites = sitesService.getManagerSites(userId);
		model.addAttribute("sites",sites);
		return "manager/managerdash";
	}
	
}
