package com.nt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Expenses;
import com.nt.entity.Materials;
import com.nt.entity.Sites;

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

	@Override
	public List<Expenses> getSiteExpenses(int siteId) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "FROM Expenses e WHERE e.site_id.site_id = :siteId";
		Query<Expenses> query = session.createQuery(hql, Expenses.class);
		query.setParameter("siteId", siteId);
		List<Expenses> expenses = query.list();
//		System.out.println(sites);
		if(expenses!=null)
			return expenses;
		else
		    return null;
	}
	
	
	
	
	
	

}
