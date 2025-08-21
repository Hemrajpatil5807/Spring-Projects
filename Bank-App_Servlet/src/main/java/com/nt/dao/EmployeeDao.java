package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nt.entity.ConnectionFactory;
import com.nt.entity.Employee;

public class EmployeeDao {
	
    private static Connection con = ConnectionFactory.getCon();
	private static PreparedStatement ps = null;
	private static Employee emp = null;

	// Register Employee
	public static boolean register(Employee e) {
		
		try{
			ps = ConnectionFactory.getCon().prepareStatement("insert into employee values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, e.getEmpID());
			ps.setString(2, e.getName());
			ps.setString(3, e.getEmail());
			ps.setLong(4, e.getMobile());
			ps.setString(5, e.getAddress());
			ps.setFloat(6, e.getSalary());
			ps.setString(7, e.getPassword());
			ps.setInt(8, e.getBranchId());
			
		    if(ps.executeUpdate()>0)
		    	return true;
		    else
		    	return false;
		} catch (Exception e2) {
               e2.printStackTrace();
		}
		
		return false;
	}

	
	// Get Employee
	public static Employee getEmployee(int empId) {
		
		try{
			ps = ConnectionFactory.getCon().prepareStatement("select * from employee where empID = ?");
			ps.setInt(1, empId);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int empID = rs.getInt("empID");
				String name = rs.getString("name");
				String email = rs.getString("email");
				long mobile = rs.getLong("mobile");
				String address = rs.getString("address");
				float salary = rs.getFloat("salary");
				String password = rs.getString("password");
				int branchId = rs.getInt("branchId");
//				String branchName = rs.getString("branchName");
//				String branchAddress = rs.getString("branchAddress");
//				String IFSCNo = rs.getString("IFSCNo");
				
				emp = new Employee(empID, name, email, mobile, address, salary, password, branchId);
				
			}
			
			if(emp!=null)
				return emp;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}

	// Update Employee
	public static boolean update(Employee e) {
		
		try{
			ps = ConnectionFactory.getCon().prepareStatement("update employee set name = ?, email = ?, mobile = ?, address = ?, salary = ?, password = ?, branchId = ? where empID = ?");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setLong(3, e.getMobile());
			ps.setString(4, e.getAddress());
			ps.setFloat(5, e.getSalary());
			ps.setString(6, e.getPassword());
			ps.setInt(7, e.getBranchId());
			ps.setInt(8, e.getEmpID());
			
		    if(ps.executeUpdate()>0)
		    	return true;
		    else
		    	return false;
		} catch (Exception e2) {
               e2.printStackTrace();
		}
		
		return false;
	}

 // Delete Employee
	public static boolean delete(int empID) {
		
		try{
			
			ps = ConnectionFactory.getCon().prepareStatement("delete from employee where empID = ?");
			ps.setInt(1, empID);
			
			if(ps.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
		      e.printStackTrace();
		}
		
		return false;
	}

// Employee Login Present or Not
	public static Employee login(String email, String password) {
		
		try{
			ps = ConnectionFactory.getCon().prepareStatement("select * from employee where email = ? and password = ?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
			 	int empID = rs.getInt("empID");
				String name = rs.getString("name");
				String email2 = rs.getString("email");
				long mobile = rs.getLong("mobile");
				String address = rs.getString("address");
				float salary = rs.getFloat("salary");
				String password2 = rs.getString("password");
				int branchId = rs.getInt("branchId");
//				String branchName = rs.getString("branchName");
//				String branchAddress = rs.getString("branchAddress");
//				String IFSCNo = rs.getString("IFSCNo");
				
				emp = new Employee(empID, name, email2, mobile, address, salary, password2, branchId);
				
			}
		  if(emp!=null) {
			if(email.equals(emp.getEmail()) && password.equals(emp.getPassword()))
				return emp;
		  }
		  
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
//		return false;
	}

	
// SelectALl Employee
	public static List<Employee> selectAll() {
		
		try {
			ps = ConnectionFactory.getCon().prepareStatement("select * from employee");
			
            ResultSet result = ps.executeQuery();
			
			List <Employee> al = new ArrayList<Employee>();
			  
			while(result.next()) {  

				
				 Employee emp = new Employee(result.getInt("empID"),result.getString("name"),result.getString("email"),result.getLong("mobile")
						 , result.getString("address"),result.getFloat("salary"),result.getString("password"),result.getInt("branchId"));	
				 
				 al.add(emp);
			}
			if(al!=null)
			  return al;
			
		}catch(Exception e){
			 e.printStackTrace();
		}
		return null;
		
		}


	public static boolean transfer(int sendaccountNo, int recaccountNo, double amount) {
		
		
		
		String withdrawQuery = "update user set balance = balance - ? where accountNo = ?";
		String depositQuery = "update user set balance = balance + ? where accountNo = ?";
		
		try {
			
			
			con.setAutoCommit(false);
			
			PreparedStatement withdrawps = con.prepareStatement(withdrawQuery);
			PreparedStatement depositps = con.prepareStatement(depositQuery);
			withdrawps.setDouble(1, amount);
			withdrawps.setInt(2, sendaccountNo);
			
			depositps.setDouble(1, amount);
			depositps.setInt(2, recaccountNo);
			
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
	
	
	
}
