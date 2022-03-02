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


@WebServlet("/customer")
public class AddCustomerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String customername = req.getParameter("customername");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		
		
		
		CustomerDtls c = new CustomerDtls(customername,contact,email,password,address,city,state);
		CustomerDAOImpl dao = new CustomerDAOImpl(DbConnect.getConn());
		
		boolean f = dao.addCustomer(c);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("successMsg", "Customer Data Added Successfully...");
			resp.sendRedirect("admin/addCustomer.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something went Wrong..!!");
			resp.sendRedirect("admin/addCustomer.jsp");
		}	
	}	
}