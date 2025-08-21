package com.nt.UserServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.entity.User;
import com.nt.service.UserService;

public class SelectAllUserServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<User> ulist = UserService.selectAll();
		
		RequestDispatcher rd = req.getRequestDispatcher("viewAllUser.jsp");
		
		if(ulist!=null) {
			req.setAttribute("ulist", ulist);
		}else {
			req.setAttribute("errorMsg", "Customer Not Present.");
		}
		rd.forward(req, resp);
	}

}
