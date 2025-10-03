package com.nt;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.entity.Expenses;
import com.nt.entity.Sites;
import com.nt.service.ExpenseService;
import com.nt.service.SitesService;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	SitesService sitesService;
	
	@Autowired
	ExpenseService expenseService;
	
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
	
	@GetMapping("/siteexpenses")
	public String expensePage(HttpSession session, Model model) {
		int userId = (int) session.getAttribute("userId");
		List<Sites> sites = sitesService.getManagerSites(userId);
		model.addAttribute("sites",sites);
		return "manager/manageexpense";
	}
	
	@RequestMapping("/managerdash")
	public String managerdashPage( HttpSession session, Model model) {
		int userId = (int) session.getAttribute("userId");
		List<Sites> sites = sitesService.getManagerSites(userId);
		model.addAttribute("sites",sites);
		return "forward:/manager/managerdash";
	}
	
	
	@GetMapping("/manageexpense")
	public String expensePage(@RequestParam int siteId,  HttpSession session, Model model) {
		int userId = (int) session.getAttribute("userId");
		List<Sites> sites = sitesService.getManagerSites(userId);
		model.addAttribute("sites",sites);
		
		   if (siteId != 0) {
		        List<Expenses> expenses = expenseService.getSiteExpenses(siteId);
		        model.addAttribute("expenses", expenses);
		        model.addAttribute("selectedSiteId", siteId);
		        model.addAttribute("selectedSiteName", sitesService.getSite(siteId).getSite_name());
		    }
		   
		return "manager/manageexpense";
	}
	
	
}
