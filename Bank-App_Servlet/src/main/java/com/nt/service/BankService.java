package com.nt.service;

import com.nt.dao.BankDao;

public class BankService {

	public static boolean transfer(int uaccountNo, int accountNo, double money) {

		return BankDao.transfer(uaccountNo, accountNo, money);
	}

	public static boolean credit(int accountNo, double amount) {

		return BankDao.credit(accountNo, amount);
	}

	public static boolean debit(int accountNo, double amount) {

		return BankDao.debit(accountNo, amount);
	}

	public static double checkBalance(int accountNo) {
		
		return BankDao.checkBalance(accountNo);
	}

}
