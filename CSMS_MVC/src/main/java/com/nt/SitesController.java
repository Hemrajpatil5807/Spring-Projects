package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	
	
	@RequestMapping("/managesites")
	public ModelAndView manageSites() {
		
		 List<Sites> sites = sitesService.getSites();
//		 model.addAllAttributes(users);
		
	    return  new ModelAndView("admin/sites/site", "sites", sites); 	
	}
	
	@PostMapping("/updatesite")
	public String updateSite(@ModelAttribute("bean") SitesDto sitedto , Model model) {
		
		System.out.println(sitedto);
		boolean isUpdated = sitesService.updateSite(sitedto);
		
		if(isUpdated) {
			 model.addAttribute("message", "Site Update Successfully !");
			 return "forward:/managesites"; 
		}else {
			 model.addAttribute("message", "Site Not Updated !");
        	 return "forward:/managesites"; 
		}	
	}
	
	@PostMapping("/updatesitestatus")
	public String updateSiteStatus(@RequestParam int siteId, @RequestParam int userId , @RequestParam String status, Model model) {
		
		System.out.println(userId);
		boolean isUpdated = sitesService.updateSiteStatus(siteId, status);
		model.addAttribute("userId",userId);
		
		if(isUpdated) {
			 model.addAttribute("message", "Site Update Successfully !");
			 return "redirect:/managerdash"; 
		}else {
			 model.addAttribute("message", "Site Not Updated !");
        	 return "redirect:/managerdash"; 
		}	
	}
	
	
	@GetMapping("/deletesite/{site_id}")
	public ModelAndView deleteSite(@PathVariable int site_id , Model model) {
		
		System.out.println(site_id);
		boolean isDelete = sitesService.deleteSite(site_id);
		if(isDelete) {
			 model.addAttribute("message", "Site Delete Successfully !");
			 return manageSites(); 
		}else {
			 model.addAttribute("message", "Site Not Deleted !");
         	 return manageSites(); 
		} 
	}
	
	
}
