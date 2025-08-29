package com.nt.service;

import org.springframework.stereotype.Repository;

import com.nt.entity.Sites;

@Repository
public interface SitesService {

	void addSite(Sites site);
	
	

}
