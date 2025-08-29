package com.nt.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="sites")
public class Sites {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="site_id")
	private int site_id;
	
	@Column(name="site_name")
	private String site_name;
	
	@Column(name="location")
	private String location;
	
	@Column(name="start_date")
    private LocalDate startDate;
	  
	@Column(name="end_date")
    private LocalDate endDate;
	
    
    @ManyToOne
    @JoinColumn(name="user_id")
	private Users manager_id;

	public Sites() {

	}

	public Sites(int site_id, String site_name, String location, LocalDate startDate, LocalDate endDate, Users manager_id) {
		
		this.site_id = site_id;
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

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public Users getManager_id() {
		return manager_id;
	}

	public void setManager_id(Users manager_id) {
		 this.manager_id = manager_id;
	}

	@Override
	public String toString() {
		return "Sites [site_id=" + site_id + ", site_name=" + site_name + ", location=" + location + ", startDate="
				+ startDate + ", endDate=" + endDate + ", manager_id=" + manager_id + "]";
	}
    
    
    
}
