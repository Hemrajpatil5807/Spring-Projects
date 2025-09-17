package com.nt.dto;

import java.time.LocalDate;

import com.nt.entity.Materials;
import com.nt.entity.Sites;

public class SiteMaterialDto {
	
	private int id;
	
	private int site_id;

	private int material_id;

	private int used_quantity;

	private String date_used;
	
	private int user_id;

	public SiteMaterialDto() {

	}

	public SiteMaterialDto(int id, int site_id, int material_id, int used_quantity, String date_used, int user_id) {
		this.id = id;
		this.site_id = site_id;
		this.material_id = material_id;
		this.used_quantity = used_quantity;
		this.date_used = date_used;
		this.user_id = user_id;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSite_id() {
		return site_id;
	}

	public void setSite_id(int site_id) {
		this.site_id = site_id;
	}

	public int getMaterial_id() {
		return material_id;
	}

	public void setMaterial_id(int material_id) {
		this.material_id = material_id;
	}

	public int getUsed_quantity() {
		return used_quantity;
	}

	public void setUsed_quantity(int used_quantity) {
		this.used_quantity = used_quantity;
	}

	public String getDate_used() {
		return date_used;
	}

	public void setDate_used(String date_used) {
		this.date_used = date_used;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "SiteMaterialDto [id=" + id + ", site_id=" + site_id + ", material_id=" + material_id
				+ ", used_quantity=" + used_quantity + ", date_used=" + date_used + ", user_id=" + user_id + "]";
	}

	

	
	
	

}
