package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nt.dto.ExpensesDto;
import com.nt.entity.Expenses;

@Service
public interface ExpenseService {

	void addExpense(ExpensesDto expense);

	List<Expenses> getExpenses();
	
	List<Expenses> getSiteExpenses(int sideId);

}
