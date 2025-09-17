package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nt.entity.Materials;

@Service
public interface MaterialsService {

	void addMaterial(Materials material);

	List<Materials> getMaterials();

	boolean updateMaterial(Materials material);

	boolean deleteMaterial(int material_id);

	Materials getMaterial(int material_id);
	
	

}
