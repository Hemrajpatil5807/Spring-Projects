package com.nt.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.SiteMaterials;

@Repository
public class SiteMaterialDaoImpl implements SiteMaterialDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addSiteMaterial(SiteMaterials sm) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(sm);
		
		return true;
	}
	
	
}
