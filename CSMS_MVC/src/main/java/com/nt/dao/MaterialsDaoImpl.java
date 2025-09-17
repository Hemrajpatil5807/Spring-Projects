package com.nt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Materials;
import com.nt.entity.Sites;

@Repository
public class MaterialsDaoImpl implements MaterialsDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void addMaterial(Materials material) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(material);
		
		System.out.println("Material Added Successfully !");
		
	}

	@Override
	public List<Materials> getMaterials() {
		
		Session session = sessionFactory.getCurrentSession();

		List<Materials> Materials = session.createQuery("FROM Materials").list();
		
		return Materials;
	}

	@Override
	public boolean updateMaterial(Materials material) {
		Session session = sessionFactory.getCurrentSession();
		Materials m = session.get(Materials.class, material.getMaterial_id());
//		System.out.println(m+" "+material.getMaterial_id());
		if(m!=null) {
		m.setMaterial_name(material.getMaterial_name());
		m.setUnit(material.getUnit());
		m.setAvailable_stock(material.getAvailable_stock());
		m.setUnitPrice(material.getUnitPrice());
		session.update(m);
	     return true;
	    }else {
		   return false;
	    }
	}

	@Override
	public boolean deleteMaterial(int material_id) {
		Session session = sessionFactory.getCurrentSession();
		Materials material = session.get(Materials.class, material_id);
		
		if(material!=null) {
		   session.delete(material);
		   return true;
		}else {
	     	return false;
		}
	}

	@Override
	public Materials getMaterial(int material_id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Materials material = session.get(Materials.class, material_id);

		if(material!=null) {
			   return material;
		}else {
		     	return null;
			}
		
	}
	
	
	
	
	
	

}
