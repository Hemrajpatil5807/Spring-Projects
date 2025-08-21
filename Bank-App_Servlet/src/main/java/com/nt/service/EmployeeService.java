package com.nt.service;

import java.util.List;

import com.nt.dao.EmployeeDao;
import com.nt.entity.Employee;

public class EmployeeService {

	public static boolean register(Employee e) {
	
		return EmployeeDao.register(e);
	}

	public static Employee getEmployee(int empId) {
		
		return EmployeeDao.getEmployee(empId);
	}

	public static boolean update(Employee e) {

		return EmployeeDao.update(e);
	}

	public static boolean delete(int empID) {

		return  EmployeeDao.delete(empID);
	}

	public static Employee login(String email, String password) {
		return EmployeeDao.login(email,password);
	}

	public static List<Employee> selectAll() {
		
		return EmployeeDao.selectAll();
	}

	public static boolean transfer(int sendaccountNo, int recaccountNo, double amount) {
		
		return EmployeeDao.transfer(sendaccountNo, recaccountNo, amount);
	}

	
	
	
}
