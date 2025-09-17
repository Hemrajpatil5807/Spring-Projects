package com.nt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nt.entity.Materials;

@Repository
public interface MaterialsDao {

	void addMaterial(Materials material);

	List<Materials> getMaterials();

	boolean updateMaterial(Materials material);

	boolean deleteMaterial(int material_id);

	Materials getMaterial(int material_id);
	
	

}
