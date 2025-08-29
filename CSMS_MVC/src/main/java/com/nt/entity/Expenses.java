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
@Table(name="expenses")
public class Expenses {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="expense_id")
	private int expense_id;
	
	@ManyToOne
	@JoinColumn(name="site_id")
	private Sites site_id;
	
	@Column(name="expense_type")
	private String expense_type;
	
	@Column(name="amount")
	private double amount;
	
	@Column(name="date")
	private LocalDate date;

	public Expenses() {
	
	}

	public Expenses(int expence_id, Sites site_id, String expense_type, double amount, LocalDate date) {
		
		this.expense_id = expence_id;
		this.site_id = site_id;
		this.expense_type = expense_type;
		this.amount = amount;
		this.date = date;
	}

	public int getExpence_id() {
		return expense_id;
	}

	public void setExpence_id(int expence_id) {
		this.expense_id = expence_id;
	}

	public Sites getSite_id() {
		return site_id;
	}

	public void setSite_id(Sites site_id) {
		this.site_id = site_id;
	}

	public String getExpense_type() {
		return expense_type;
	}

	public void setExpense_type(String expense_type) {
		this.expense_type = expense_type;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Expenses [expense_id=" + expense_id + ", site_id=" + site_id + ", expense_type=" + expense_type
				+ ", amount=" + amount + ", date=" + date + "]";
	}

	
	
	
	
	
}
