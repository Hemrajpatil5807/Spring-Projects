package com.nt.employeeServlet;

import java.io.IOException;

import com.nt.entity.Employee;
import com.nt.service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmpUpdateServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int empID = Integer.parseInt(req.getParameter("empID"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		String address = req.getParameter("address");
	    float salary = Float.parseFloat(req.getParameter("salary"));
	    String password = req.getParameter("password");
		int branchId = Integer.parseInt(req.getParameter("branchId"));
		
	    Employee e = new Employee(empID, name, email, mobile, address, salary, password,branchId);
	    boolean isUpdate = EmployeeService.update(e); 
	    
        RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
	    
	    if(isUpdate) {
	    	req.setAttribute("successMsg", "Employee Updated Succeffuly");
	    }else {
	    	req.setAttribute("errorMsg", "Employee Not Updated");
	    }
	    
	    rd.forward(req, resp);
		
		
	}

}
