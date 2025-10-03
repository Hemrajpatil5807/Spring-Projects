package com.nt.dao;

import org.springframework.stereotype.Repository;

import com.nt.entity.SiteMaterials;

@Repository
public interface SiteMaterialDao {

	boolean addSiteMaterial(SiteMaterials sm);

	SiteMaterials getSiteMaterial();

}
