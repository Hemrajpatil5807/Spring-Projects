package com.nt.service;


import org.springframework.stereotype.Service;

import com.nt.dto.SiteMaterialDto;
import com.nt.entity.SiteMaterials;

@Service
public interface SiteMaterialService {

	
	boolean addSiteMaterial(SiteMaterialDto sm);
	
	

}
