package com.nt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.dto.SiteMaterialDto;
import com.nt.entity.SiteMaterials;
import com.nt.service.SiteMaterialService;

@Controller
public class SiteMaterialController {

	@Autowired
	SiteMaterialService siteMaterialService;
	
	@PostMapping("/addSiteMaterial")
	public String addSiteMaterial(@ModelAttribute SiteMaterialDto sm , Model model, HttpSession session) {
		
		boolean isAdded = siteMaterialService.addSiteMaterial(sm);
		session.setAttribute("userId", sm.getUser_id());
		if(isAdded) {
			model.addAttribute("msg","Site Material Added Succefully !");
			return "forward:/managerdash";
		}else {
			model.addAttribute("msg","Site Material Not Added Succefully !");
			return "forward:/managerdash";
		}
	
	}
	

	@GetMapping("/getSiteMaterial")
	public String getSiteMaterial(int SiteId) {
		
		SiteMaterials sm = siteMaterialService.getSiteMaterial();
		
		return null;
	}
	
	
	
	
	
}
