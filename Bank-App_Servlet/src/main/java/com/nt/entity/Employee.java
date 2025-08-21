package com.nt.entity;

public class Employee {

	private int empID;
	private String name;
	private String email;
	private long mobile;
	private String address;
	private float salary;
	private String password;
	private int branchId;
	
	public Employee(){ }

	public Employee(int empID, String name, String email, long mobile, String address, float salary, String password, int branchId) {
		this.empID = empID;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.salary = salary;
		this.password = password;
		this.branchId = branchId;
	}

	public int getEmpID() {
		return empID;
	}

	public void setEmpID(int empID) {
		this.empID = empID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	@Override
	public String toString() {
		return "Employee [empID=" + empID + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", address="
				+ address + ", salary=" + salary + ", password=" + password + "]";
	}
	
	
	
	
	
	
	
}
