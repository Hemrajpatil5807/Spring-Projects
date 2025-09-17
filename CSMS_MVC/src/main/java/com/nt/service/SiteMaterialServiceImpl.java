package com.nt.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.SiteMaterialDao;
import com.nt.dto.SiteMaterialDto;
import com.nt.entity.Materials;
import com.nt.entity.SiteMaterials;
import com.nt.entity.Sites;

@Service
public class SiteMaterialServiceImpl implements SiteMaterialService{
	
	@Autowired
	SiteMaterialDao siteMaterialDao;
	
	@Autowired
	SitesService sitesService;
	
	@Autowired
	MaterialsService materialsService;
	
	@Override
	@Transactional
	public boolean addSiteMaterial(SiteMaterialDto sm) {
		
		Sites site = sitesService.getSite(sm.getSite_id());
		Materials material = materialsService.getMaterial(sm.getMaterial_id());
		SiteMaterials s = new SiteMaterials(site,material,sm.getUsed_quantity(),sm.getDate_used());
		
		return siteMaterialDao.addSiteMaterial(s);
	}
	

	
	
}
