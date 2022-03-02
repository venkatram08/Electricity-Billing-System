package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.CustomerDAOImpl;
import com.entity.CustomerDtls;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		
		CustomerDAOImpl dao = new CustomerDAOImpl(DbConnect.getConn());
		CustomerDtls u = dao.loginAdmin(email, pass);
		
		HttpSession session = req.getSession();
		
		if(u!=null) {
			session.setAttribute("email", email);
			session.setAttribute("validMsg", "Logged in Successfully");
			resp.sendRedirect("adminlogin.jsp");			
		}
		else {
			session.setAttribute("invalidMsg", "Invalid Email & Password");
			resp.sendRedirect("adminlogin.jsp");			
		}
	}	
}