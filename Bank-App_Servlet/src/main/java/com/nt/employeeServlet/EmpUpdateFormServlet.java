package com.nt.employeeServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpUpdateFormServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int empID = Integer.parseInt(req.getParameter("empID"));
		
		RequestDispatcher rd = req.getRequestDispatcher("updateEmp.jsp");
		
		if(empID != 0) {
			req.setAttribute("empID", empID);
		}else {
			req.setAttribute("errorMsg", "Employee Not Exist.");
		}
		
		rd.forward(req, resp);
	}

}
