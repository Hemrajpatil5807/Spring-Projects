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
import org.springframework.web.servlet.ModelAndView;


import com.nt.entity.Materials;
import com.nt.service.MaterialsService;

@Controller
public class MaterialsController {
	
	@Autowired
	MaterialsService materialsService;
	
	@PostMapping("/registermaterial")
	public ModelAndView registerMaterial(@ModelAttribute Materials material) {
		
		System.out.println(material);
		materialsService.addMaterial(material);
		
		return new ModelAndView("admin/admindash", "message" ,"Material Added Succefully !");
		
	}
	
	@PostMapping("/addmaterial")
	public ModelAndView addMaterial(@ModelAttribute Materials material) {
		
		System.out.println(material);
		materialsService.addMaterial(material);
		
		return manageMaterials();
		
	}
	
	@RequestMapping("/managematerials")
	public ModelAndView manageMaterials() {
		
		 List<Materials> materials = materialsService.getMaterials();
		
	    return  new ModelAndView("admin/materials/material", "materials", materials); 	
	}
	
	@PostMapping("/updatematerial")
	public String updateMaterial(@ModelAttribute("bean") Materials material , Model model) {
		
		System.out.println(material);
		boolean isUpdated = materialsService.updateMaterial(material);
		
		if(isUpdated) {
			 model.addAttribute("message", "Material Update Successfully !");
			 return "forward:/managematerials"; 
		}else {
			 model.addAttribute("message", "Material Not Updated !");
        	 return "forward:/managematerials"; 
		}	
	}
	
	
	@GetMapping("/deletematerial/{material_id}")
	public ModelAndView deleteSite(@PathVariable int material_id , Model model) {
		
		System.out.println(material_id);
		boolean isDelete = materialsService.deleteMaterial(material_id);
		if(isDelete) {
			 model.addAttribute("message", "Material Delete Successfully !");
			 return manageMaterials(); 
		}else {
			 model.addAttribute("message", "Material Not Deleted !");
         	 return manageMaterials(); 
		} 
	}
	
	
	
	

}
