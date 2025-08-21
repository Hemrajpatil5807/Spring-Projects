package com.nt.employeeServlet;

import java.io.IOException;

import com.nt.entity.Employee;
import com.nt.service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmpRegisterServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Emplpoyee Register Servlet");
		
		int empID = 0;
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		String address = req.getParameter("address");
	    float salary = Float.parseFloat(req.getParameter("salary"));
	    String password = req.getParameter("password");
		int branchId = Integer.parseInt(req.getParameter("branchId"));
		
	    Employee e = new Employee(empID, name, email, mobile, address, salary, password,branchId);
	    boolean isAdded = EmployeeService.register(e);    
		
	    RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
	    
	    if(isAdded) {
	    	req.setAttribute("successMsg", "Employee Register Succeffuly");
	    }else {
	    	req.setAttribute("errorMsg", "Employee Not Registerd");
	    }
	    
	    rd.forward(req, resp);
	}
	
	
	
	
}
