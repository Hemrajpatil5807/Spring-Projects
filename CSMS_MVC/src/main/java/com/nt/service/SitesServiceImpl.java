package com.nt.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.dao.SitesDao;
import com.nt.entity.Sites;

@Repository
public class SitesServiceImpl implements SitesService{
	
	@Autowired
	SitesDao sitesDao;

	@Override
	@Transactional
	public void addSite(Sites site) {
		
		sitesDao.addSite(site);
		
	}
	
	

}
