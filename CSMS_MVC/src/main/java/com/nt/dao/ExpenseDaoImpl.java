package com.nt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Expenses;
import com.nt.entity.Materials;

@Repository
public class ExpenseDaoImpl implements ExpenseDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void addExpense(Expenses expense) {
		
		Session session = sessionFactory.getCurrentSession();
	    session.save(expense);
		System.out.println("Expense Added Successfully !");
	}

	@Override
	public List<Expenses> getExpenses() {
		Session session = sessionFactory.getCurrentSession();

		List<Expenses> expense = session.createQuery("FROM Expenses").list();
		
		return expense;
	}
	
	
	
	
	
	

}
