package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nt.entity.ConnectionFactory;

public class BankDao {
	
	private static PreparedStatement ps = null;
    private static Connection con = ConnectionFactory.getCon();
	
public static boolean transfer(int uaccountNo, int accountNo , double money) {
		
		String withdrawQuery = "update user set balance = balance - ? where accountNo = ?";
		String depositQuery = "update user set balance = balance + ? where accountNo = ?";
		
		try {
			
			
			con.setAutoCommit(false);
			
			PreparedStatement withdrawps = con.prepareStatement(withdrawQuery);
			PreparedStatement depositps = con.prepareStatement(depositQuery);
			withdrawps.setDouble(1, money);
			withdrawps.setInt(2, uaccountNo);
			
			depositps.setDouble(1, money);
			depositps.setInt(2, accountNo);
			
			int withdrawAffected = withdrawps.executeUpdate();
			int depositAffected = depositps.executeUpdate();
			
			if(withdrawAffected > 0 && depositAffected > 0) {   // here we check if both query is Affected in table then commit()
				con.commit();
				System.out.println("Transaction Successful!");
				return true;
			}else {
				con.rollback();
				System.out.println("Transaction Failed");
				return false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return false;
	}

	public static boolean credit(int accountNo, double amount) {
		
		try {
			
			ps = ConnectionFactory.getCon().prepareStatement("update user set balance = balance + ? where accountNo = ?");
			ps.setDouble(1, amount);
			ps.setInt(2, accountNo);
			
			if(ps.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	public static boolean debit(int accountNo, double amount) {
		
      try {
			
			ps = ConnectionFactory.getCon().prepareStatement("update user set balance = balance - ? where accountNo = ?");
			ps.setDouble(1, amount);
			ps.setInt(2, accountNo);
			
			if(ps.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
      
      
		return false;
	}

	public static double checkBalance(int accountNo) {
		
		double balance = 0;
		
		try {
			
			ps = ConnectionFactory.getCon().prepareStatement("SELECT balance FROM user WHERE accountNo = ?");
			ps.setInt(1, accountNo);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
			   balance = rs.getDouble("balance");
				
			}
		
			return balance;
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 00.0;
	}

	
	
}


