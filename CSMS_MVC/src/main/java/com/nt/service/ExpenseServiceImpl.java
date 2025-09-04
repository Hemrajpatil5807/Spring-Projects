package com.nt.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.ExpenseDao;
import com.nt.dto.ExpensesDto;
import com.nt.entity.Expenses;
import com.nt.entity.Sites;

@Service
public class ExpenseServiceImpl implements ExpenseService{
	
	@Autowired
	ExpenseDao expenseDao;
	
	@Autowired
	SitesService sitesService;

	@Override
	@Transactional
	public void addExpense(ExpensesDto expense) {
		
		Sites site = sitesService.getSite(expense.getSite_id());
	    
		Expenses exp = new Expenses(site, expense.getExpense_type(),expense.getAmount(),expense.getDate());
		
		expenseDao.addExpense(exp);
	}

	@Override
	@Transactional
	public List<Expenses> getExpenses() {
		
		return expenseDao.getExpenses();
	}
	
	
	
	
	

}
