package com.nt.dao;

import org.springframework.stereotype.Repository;

import com.nt.entity.Sites;

@Repository
public interface SitesDao {

	void addSite(Sites site);

}
