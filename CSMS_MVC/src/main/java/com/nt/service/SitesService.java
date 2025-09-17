package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.nt.dto.SitesDto;
import com.nt.entity.Sites;

@Service
public interface SitesService {

	void addSite(SitesDto site);

	List<Sites> getSites();

	boolean updateSite(SitesDto site);

	boolean deleteSite(int id);

	Sites getSite(int i);

	boolean updateSiteStatus(int siteId, String satus);

	List<Sites> getManagerSites(int userId);


	
	
	

}
