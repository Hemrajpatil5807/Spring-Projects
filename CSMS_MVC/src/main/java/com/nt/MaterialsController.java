package com.nt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nt.entity.Materials;
import com.nt.service.MaterialsService;

@Controller
public class MaterialsController {
	
	@Autowired
	MaterialsService materialsService;
	
	@PostMapping("/addmaterial")
	public ModelAndView addMaterial(@ModelAttribute Materials material) {
		
		
		
		
		return null;
		
	}
	

}
