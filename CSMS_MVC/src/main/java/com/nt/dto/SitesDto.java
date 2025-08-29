package com.nt.dto;

import java.time.LocalDate;

public class SitesDto {

	
	private int site_id;
	
	private String site_name;
	
	private String location;
	
    private String startDate;
	  
    private String endDate;

	private int manager_id;

	public SitesDto() {
		
	}

	public SitesDto(int site_id, String site_name, String location, String startDate, String endDate, int manager_id) {
	
		this.site_id = site_id;
		this.site_name = site_name;
		this.location = location;
		this.startDate = startDate;
		this.endDate = endDate;
		this.manager_id = manager_id;
	}
	
	public SitesDto(String site_name, String location, String startDate, String endDate, int manager_id) {
		
		this.site_name = site_name;
		this.location = location;
		this.startDate = startDate;
		this.endDate = endDate;
		this.manager_id = manager_id;
	}

	public int getSite_id() {
		return site_id;
	}

	public void setSite_id(int site_id) {
		this.site_id = site_id;
	}

	public String getSite_name() {
		return site_name;
	}

	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}

	@Override
	public String toString() {
		return "SitesDto [site_id=" + site_id + ", site_name=" + site_name + ", location=" + location + ", startDate="
				+ startDate + ", endDate=" + endDate + ", manager_id=" + manager_id + "]";
	}
	

	
}
