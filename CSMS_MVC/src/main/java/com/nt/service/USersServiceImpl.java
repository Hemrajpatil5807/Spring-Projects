package com.nt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.UsersDao;
import com.nt.entity.Users;

@Service
public class USersServiceImpl implements UsersService{

	@Autowired
	UsersDao usersDao;
	
	@Override
	@Transactional
	public String registerUser(Users user) {
		  usersDao.register(user);
		  return "Register Succeffully";
	}

	@Override
	@Transactional
	public Users loginUser(String email, String password) {
		
		return usersDao.loginUser(email, password);
	}

	@Override
	@Transactional
	public List<Users> getUsers() {
	
		return usersDao.getUsers();
	}

	@Override
	@Transactional
	public boolean updateUser(Users user) {
		
		return usersDao.updateUser(user);
	}

	@Override
	@Transactional
	public boolean deleteUser(int id) {
		
		return usersDao.deleteUser(id);
	}

	@Override
	@Transactional
	public Users getUser(int manager_id) {
		
		return usersDao.getUser(manager_id);
	}
	
	
	
	

}
