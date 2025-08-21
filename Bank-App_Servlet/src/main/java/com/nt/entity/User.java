package com.nt.entity;

public class User {

	private int accountNo;
	private String name;
	private String email;
	private long mobile;
	private String address;
	private String pin;
	private int branchId;
	private double balance;
	
	public User(){ }

	public User(int accountNo, String name, String email, long mobile, String address, String pin, int branchId, double balance) {
		this.accountNo = accountNo;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.pin = pin;
		this.branchId =branchId;
		this.balance = balance;
	}
	
	public User(String name, String email, long mobile, String address, String pin, int branchId, double balance) {
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.pin = pin;
		this.branchId =branchId;
		this.balance = balance;
	}

	public User(int accountNo, String name, String email, long mobile, String address, String pin) {
		this.accountNo = accountNo;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.pin = pin;
		
	}

	public int getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
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

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}
	
	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	
	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "User [accountNo=" + accountNo + ", name=" + name + ", email=" + email + ", mobile=" + mobile
				+ ", address=" + address + ", pin=" + pin + ", branchId=" + branchId + ", balance=" + balance + "]";
	}	
	
	
	
}
