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
@Table(name="site_materials")
public class SiteMaterials {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="site_id")
	private Sites site_id;
	
	@ManyToOne
	@JoinColumn(name="material_id")
	private Materials material_id;
	
	@Column(name="used_quantity")
	private int used_quantity;
	
	@Column(name="date_used")
	private LocalDate date_used;

	public SiteMaterials() {
	
	}

	public SiteMaterials(int id, Sites site_id, Materials material_id, int used_quantity, LocalDate date_used) {
		
		this.id = id;
		this.site_id = site_id;
		this.material_id = material_id;
		this.used_quantity = used_quantity;
		this.date_used = date_used;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Sites getSite_id() {
		return site_id;
	}

	public void setSite_id(Sites site_id) {
		this.site_id = site_id;
	}

	public Materials getMaterial_id() {
		return material_id;
	}

	public void setMaterial_id(Materials material_id) {
		this.material_id = material_id;
	}

	public int getUsed_quantity() {
		return used_quantity;
	}

	public void setUsed_quantity(int used_quantity) {
		this.used_quantity = used_quantity;
	}

	public LocalDate getDate_used() {
		return date_used;
	}

	public void setDate_used(LocalDate date_used) {
		this.date_used = date_used;
	}

	@Override
	public String toString() {
		return "SiteMaterials [id=" + id + ", site_id=" + site_id + ", material_id=" + material_id + ", used_quantity="
				+ used_quantity + ", date_used=" + date_used + "]";
	}
	
	
	
	
	
	
	

}
