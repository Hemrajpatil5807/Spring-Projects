package com.nt.dao;


import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nt.entity.Users;

@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void register(Users user) {
		
		  Session session = sessionFactory.getCurrentSession();
		  session.save("Users", user);    
    }

	@Override
	public Users loginUser(String email, String password) {
		
		Session session = sessionFactory.getCurrentSession();
//		System.out.println("Trying login with: " + email + " / " + password);

		    String hql = "FROM Users WHERE email = :email AND password = :password";
	        Query<Users> query = session.createQuery(hql, Users.class);
	        query.setParameter("email", email);
	        query.setParameter("password", password);

	        return query.uniqueResult(); // returns null if not found

	}

	@Override
	public List<Users> getUsers() {
		
		Session session = sessionFactory.getCurrentSession();
		
	    List<Users> users =  session.createQuery("FROM Users").list();
		
		return users;
	}

	@Override
	public boolean updateUser(Users user) {
		
		Session session = sessionFactory.getCurrentSession();
		Users u = session.get(Users.class, user.getId());
		
		if(user!=null) {
		u.setName(user.getName());
		u.setEmail(user.getEmail());
		u.setPassword(user.getPassword());
		u.setRole(user.getRole());
		session.update(u);
	     return true;
	    }else {
		   return false;
	    }
	}

	@Override
	public boolean deleteUser(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		Users user = session.get(Users.class, id);
		
		if(user!=null) {
		   session.delete(user);
		   return true;
		}
		return false;
	}

	@Override
	public Users getUser(int manager_id) {
		
		Session session = sessionFactory.getCurrentSession();
		Users user = session.get(Users.class, manager_id);
		
		if(user!=null)
			return user;
		else
		    return null;
	}
	
	
	
	
	
}
