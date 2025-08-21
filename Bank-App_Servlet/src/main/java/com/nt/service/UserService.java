package com.nt.service;

import java.util.List;

import com.nt.dao.UserDao;
import com.nt.entity.User;

public class UserService {

	public static boolean register(User u) {

//		int accountNo = 1001234000;
//		
//		for(int i = 0 ; i<1; i++) {
//			accountNo = accountNo+1;
//		    u.setAccountNo(accountNo);
//		}
		u.setAccountNo(0);
		return UserDao.register(u);
	}

	public static User getUser(int accountNo) {
		
		return UserDao.getUser(accountNo);
	}

	public static List<User> selectAll() {
		
		return UserDao.selectAll();
	}

	public static boolean updateUser(User u) {
		
		return UserDao.updateUser(u);
	}

	public static boolean deleteUser(int accountNo) {
		
		return UserDao.deleteUser(accountNo);
	}

	public static User login(String email, String password) {
		
		return UserDao.login(email, password);
	}


}

