package com.nt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.entity.Employee;
import com.nt.entity.User;
import com.nt.service.EmployeeService;
import com.nt.service.UserService;



public class LoginServlet extends HttpServlet{
	
	private Employee e = null;
	private User u = null;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		     String email = req.getParameter("email");
		     String password = req.getParameter("password");
		     HttpSession session = req.getSession();
		     
		     if(email.equals("admin@gmail.com") && password.equals("admin")) {
			     RequestDispatcher rd = req.getRequestDispatcher("admin.jsp");
		    	 req.setAttribute("message", "Welcome");
		    	 req.setAttribute("name", "Admin");
		  	     rd.forward(req, resp);
		    	 
		     }else if(empLogin(email, password)) {
		    	
			     session.setAttribute("employee", e.getName());
		    	 
		    	 RequestDispatcher rd = req.getRequestDispatcher("employee.jsp");
		    	 req.setAttribute("message", "Welcome");
		  	     rd.forward(req, resp);
		    	     
		     }else if(userLogin(email, password)) {
		    	 
		    	 session.setAttribute("user", u.getName());
		    	 session.setAttribute("uaccountNo", u.getAccountNo());
		    	 
		    	 RequestDispatcher rd = req.getRequestDispatcher("user.jsp");
		    	 req.setAttribute("message", "Welcome");
		  	     rd.forward(req, resp);
		     }
		     else {
		    	 RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		    	 req.setAttribute("message", "Invalid Crediantials");
		  	     rd.forward(req, resp);
		     }
		
	}
	
	boolean empLogin(String email, String password) {
		
		 e = EmployeeService.login(email,password);
		 
	   if(e!=null) {	 
		if(email.equals(e.getEmail()) && password.equals(e.getPassword()))
            return true;
		 else
		    return false;
	   }
	   
	   return false;
	}
	
	
	boolean userLogin(String email, String password) {
		
		u = UserService.login(email,password);
		 
	  if(u!=null) {	
		if(email.equals(u.getEmail()) && password.equals(u.getPin()))
			return true;
		 else
		    return false;
	  }
	  
	  return false;
	}
	
	
}
