package com.nt.service;

import org.springframework.stereotype.Repository;

import com.nt.dto.SitesDto;

@Repository
public interface SitesService {

	void addSite(SitesDto site);
	
	

}
