package com.nt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nt.entity.Expenses;

@Repository
public interface ExpenseDao {

	void addExpense(Expenses expense);

	List<Expenses> getExpenses();

	List<Expenses> getSiteExpenses(int siteId);

	
	
}
