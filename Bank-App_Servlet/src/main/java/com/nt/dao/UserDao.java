package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nt.entity.ConnectionFactory;
import com.nt.entity.User;

public class UserDao {

	private static PreparedStatement ps = null;
	private static User u = null;
	
	// Register User
	public static boolean register(User u) {

		try {
			ps = ConnectionFactory.getCon().prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, u.getAccountNo());
			ps.setString(2, u.getName());
			ps.setString(3, u.getEmail());
			ps.setLong(4, u.getMobile());
			ps.setString(5, u.getAddress());
			ps.setString(6, u.getPin());
			ps.setInt(7, u.getBranchId());
			ps.setDouble(8, u.getBalance());

			if (ps.executeUpdate() > 0)
				return true;
			else
				return false;
		} catch (Exception e2) {
			e2.printStackTrace();
		}

		return false;
	}

	// Get User
	public static User getUser(int accountNo) {

		try {

			ps = ConnectionFactory.getCon().prepareStatement("select * from user where accountNo = ?");
			ps.setInt(1, accountNo);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int uaccountNo = rs.getInt("accountNo");
				String name = rs.getString("name");
				String email = rs.getString("email");
				long mobile = rs.getLong("mobile");
				String address = rs.getString("address");
				String pin = rs.getString("pin");
				int branchId = rs.getInt("branchId");
				double balance = rs.getDouble("balance");

				u = new User(uaccountNo, name, email, mobile, address, pin, branchId, balance);

			}

			if (u != null) {
				return u;
			}else {
				return null;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	// Select ALl User
	public static List<User> selectAll() {

		try {

			ps = ConnectionFactory.getCon().prepareStatement("select * from user");
			List<User> ulist = new ArrayList<User>();
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				int uaccountNo = rs.getInt("accountNo");
				String name = rs.getString("name");
				String email = rs.getString("email");
				long mobile = rs.getLong("mobile");
				String address = rs.getString("address");
				String pin = rs.getString("pin");
				int branchId = rs.getInt("branchId");
				double balance = rs.getDouble("balance");

				u = new User(uaccountNo, name, email, mobile, address, pin, branchId, balance);
				ulist.add(u);
			}

			if (ulist != null) {
				return ulist;
			}else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	// Update User
	public static boolean updateUser(User u) {

		try {

			ps = ConnectionFactory.getCon().prepareStatement(
					"update user set name = ?, email = ?, mobile = ?, address = ?, pin = ? where accountNo = ?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setLong(3, u.getMobile());
			ps.setString(4, u.getAddress());
			ps.setString(5, u.getPin());
			ps.setInt(6, u.getAccountNo());

			if (ps.executeUpdate() > 0)
				return true;
			else
				return false;

		} catch (Exception e) {

			e.printStackTrace();
		}

		return false;
	}

	public static boolean deleteUser(int accountNo) {

		try {

			ps = ConnectionFactory.getCon().prepareStatement("delete from user where accountNo = ?");
			ps.setInt(1, accountNo);

			if (ps.executeUpdate() > 0)
				return true;
			else
				return false;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public static User login(String email, String password) {

		try {

			ps = ConnectionFactory.getCon().prepareStatement("select * from user where email = ? and pin = ?");
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int uaccountNo = rs.getInt("accountNo");
				String name = rs.getString("name");
				String uemail = rs.getString("email");
				long mobile = rs.getLong("mobile");
				String address = rs.getString("address");
				String pin = rs.getString("pin");
				int branchId = rs.getInt("branchId");
				double balance = rs.getDouble("balance");

				u = new User(uaccountNo, name, uemail, mobile, address, pin, branchId, balance);

			}
            
		   if(u!=null){
			if(email.equals(u.getEmail()) && password.equals(u.getPin()))
				return u;
		   }else {
				return null;
			}
		   
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	
	
	

}
