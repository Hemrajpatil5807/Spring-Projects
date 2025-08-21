package com.nt.employeeServlet;

import java.io.IOException;

import com.nt.service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmpDeleteServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int empID = Integer.parseInt(req.getParameter("empID"));
		
		boolean isDelete = EmployeeService.delete(empID); 
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isDelete) {
			req.setAttribute("successMsg", "Record Deleted Succefully");
		}else {
	    	req.setAttribute("errorMsg", "Record Not Deleted");
	    }
		
		rd.forward(req, resp);
		
	}

	
}
