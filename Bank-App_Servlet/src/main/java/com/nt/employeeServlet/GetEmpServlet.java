package com.nt.employeeServlet;

import java.io.IOException;

import com.nt.entity.Employee;
import com.nt.service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetEmpServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int empId = Integer.parseInt(req.getParameter("empId"));
		
		Employee e = EmployeeService.getEmployee(empId);
		
		RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
		
		if(e!=null) {
			req.setAttribute("emp", e);
		}else {
			req.setAttribute("errorMsg", "Employee Not Present");
		}
		
		rd.forward(req, resp);
		
	}

}
