package com.nt.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.dao.SitesDao;
import com.nt.dto.SitesDto;
import com.nt.entity.Sites;
import com.nt.entity.Users;

@Repository
public class SitesServiceImpl implements SitesService{
	
	@Autowired
	SitesDao sitesDao;
	
	@Autowired
	UsersService usersService;

	@Override
	@Transactional
	public void addSite(SitesDto sitedto) {
		
		Users user = usersService.getUser(sitedto.getManager_id());
		Sites site = new Sites(sitedto.getSite_name(),sitedto.getLocation(),sitedto.getStartDate(),sitedto.getEndDate(),user);
		
		sitesDao.addSite(site);
		
	}
	
	

}
