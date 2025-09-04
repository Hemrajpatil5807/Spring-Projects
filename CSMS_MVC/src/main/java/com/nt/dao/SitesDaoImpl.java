package com.nt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Sites;
import com.nt.entity.Users;

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

	@Override
	public List<Sites> getSites() {
		Session session = sessionFactory.getCurrentSession();

		List<Sites> sites = session.createQuery("FROM Sites").list();
		
		return sites;
	}

	@Override
	public boolean updateSite(Sites site) {
		Session session = sessionFactory.getCurrentSession();
		Sites s = session.get(Sites.class, site.getSite_id());
//		System.out.println(s+" "+site.getSite_id());
		if(s!=null) {
		s.setSite_name(site.getSite_name());
		s.setLocation(site.getLocation());
		s.setStartDate(site.getStartDate());
		s.setEndDate(site.getEndDate());
		s.setStatus(site.getStatus());
		s.setManager_id(site.getManager_id());
		session.update(s);
	     return true;
	    }else {
		   return false;
	    }
	}

	@Override
	public boolean deleteSite(int id) {
		Session session = sessionFactory.getCurrentSession();
		Sites sites = session.get(Sites.class, id);
		
		if(sites!=null) {
		   session.delete(sites);
		   return true;
		}else {
	     	return false;
		}
	}

	@Override
	public Sites getSite(int site_id) {
		
		Session session = sessionFactory.getCurrentSession();
		Sites site = session.get(Sites.class, site_id);
		
		if(site!=null)
			return site;
		else
		    return null;
	}
	
	
	

}
