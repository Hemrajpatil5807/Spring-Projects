package com.nt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nt.entity.Sites;

@Repository
public interface SitesDao {

	void addSite(Sites site);

	List<Sites> getSites();

	boolean updateSite(Sites site);

	boolean deleteSite(int id);

	Sites getSite(int site_id);

}
