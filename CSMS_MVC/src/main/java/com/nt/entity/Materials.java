package com.nt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="materials")
public class Materials {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="material_id")
	private int material_id;
	
	@Column(name="material_name")
	private String material_name;
	
	@Column(name="unit")
	private String unit;
	
	@Column(name="available_stock")
	private int available_stock;
	
	@Column(name="unitPrice")
	private double unitPrice;
	
	

	public Materials() {
	
	}

	public Materials(int material_id, String material_name, String unit, int available_stock, double unitPrice) {
		
		this.material_id = material_id;
		this.material_name = material_name;
		this.unit = unit;
		this.available_stock = available_stock;
		this.unitPrice = unitPrice;
	}

	public int getMaterial_id() {
		return material_id;
	}

	public void setMaterial_id(int material_id) {
		this.material_id = material_id;
	}

	public String getMaterial_name() {
		return material_name;
	}

	public void setMaterial_name(String material_name) {
		this.material_name = material_name;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getAvailable_stock() {
		return available_stock;
	}

	public void setAvailable_stock(int available_stock) {
		this.available_stock = available_stock;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	@Override
	public String toString() {
		return "Materials [material_id=" + material_id + ", material_name=" + material_name + ", unit=" + unit
				+ ", available_stock=" + available_stock + ", unitPrice=" + unitPrice + "]";
	}

	
	
	
	
	
	
	
	
}
