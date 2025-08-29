package com.nt.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Sites;

@Repository
public class SitesDaoImpl implements SitesDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void addSite(Sites site) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(site);
		
		System.out.println("Site Added Succefully !");
		
	}
	
	
	

}
