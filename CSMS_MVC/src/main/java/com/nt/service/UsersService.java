package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nt.entity.Users;

@Service
public interface UsersService {
	
	String registerUser(Users u);

	Users loginUser(String username, String password);

	List<Users> getUsers();

	boolean updateUser(Users user);

	boolean deleteUser(int id);

	Users getUser(int manager_id);

}
