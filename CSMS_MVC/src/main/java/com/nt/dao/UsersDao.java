package com.nt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.nt.entity.Users;

@Repository
public interface UsersDao {

	void register(Users user);

	Users loginUser(String username, String password);

	List<Users> getUsers();

	boolean updateUser(Users user);
	
}
