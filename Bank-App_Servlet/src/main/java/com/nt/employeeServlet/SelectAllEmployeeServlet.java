package com.nt.employeeServlet;

import java.io.IOException;
import java.util.List;

import com.nt.entity.Employee;
import com.nt.service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectAllEmployeeServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List <Employee> el = EmployeeService.selectAll();
		
		RequestDispatcher rd = req.getRequestDispatcher("viewAllEmp.jsp");
		System.out.println(el);
		if(el!=null) {
			req.setAttribute("elist", el);
		}else {
			req.setAttribute("errorMsg", "Employee Not Exist");
		}
		
		rd.forward(req, resp);
	}
	
}
