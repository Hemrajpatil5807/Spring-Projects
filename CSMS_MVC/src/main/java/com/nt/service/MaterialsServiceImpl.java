package com.nt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.MaterialsDao;
import com.nt.entity.Materials;

@Service
public class MaterialsServiceImpl implements MaterialsService{
	
	@Autowired
	MaterialsDao materialsDao;

	@Override
	@Transactional
	public void addMaterial(Materials material) {
		
		materialsDao.addMaterial(material);
		
	}

	@Override
	@Transactional
	public List<Materials> getMaterials() {
		
		return materialsDao.getMaterials();
	}

	@Override
	@Transactional
	public boolean updateMaterial(Materials material) {
		
		return materialsDao.updateMaterial(material);
	}

	@Override
	@Transactional
	public boolean deleteMaterial(int material_id) {
		
		return materialsDao.deleteMaterial(material_id);
	}
	
	

}
