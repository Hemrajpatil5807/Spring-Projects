package com.nt.dto;


public class ExpensesDto {

private int expense_id;
	
	private int site_id;
	
	private String expense_type;
	
	private double amount;
	
	private String date;
	
	private int user_id;
	
	public ExpensesDto() {
		
	}

	public ExpensesDto(int expense_id, int site_id, String expense_type, double amount, String date) {
		
		this.expense_id = expense_id;
		this.site_id = site_id;
		this.expense_type = expense_type;
		this.amount = amount;
		this.date = date;
	}

	public int getExpense_id() {
		return expense_id;
	}

	public void setExpense_id(int expense_id) {
		this.expense_id = expense_id;
	}

	public int getSite_id() {
		return site_id;
	}

	public void setSite_id(int site_id) {
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ExpenseDto [expense_id=" + expense_id + ", site_id=" + site_id + ", expense_type=" + expense_type
				+ ", amount=" + amount + ", date=" + date + "]";
	}

	
	
	
	
}




