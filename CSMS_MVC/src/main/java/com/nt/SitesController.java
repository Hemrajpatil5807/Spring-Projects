package com.nt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.dto.SitesDto;
import com.nt.entity.Sites;
import com.nt.service.SitesService;

@Controller
public class SitesController {
	
	@Autowired
	SitesService sitesService;

	@RequestMapping("/addsite")
	public String addSite(@ModelAttribute SitesDto sitedto, Model model) {
		
//		Sites site = new Sites("Concreate Road","Ainpur","2025-08-29", "2025-10-30",new Users( 2, "Bhojaraj Patil", "bhoju9090@gmail.com","bhoju@123","SITE_MANAGER"));
		System.out.println(sitedto);
		sitesService.addSite(sitedto);
		model.addAttribute("message", "Site Added Successfully !");
		   
		return "admin/admindash";
	}
	
	
	
}
