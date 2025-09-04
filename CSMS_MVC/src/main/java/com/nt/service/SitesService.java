package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nt.dto.SitesDto;
import com.nt.entity.Sites;

@Repository
public interface SitesService {

	void addSite(SitesDto site);

	List<Sites> getSites();

	boolean updateSite(SitesDto site);

	boolean deleteSite(int id);

	Sites getSite(int i);


	
	
	

}
