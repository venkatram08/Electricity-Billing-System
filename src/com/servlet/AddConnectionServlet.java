package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.ConnectionDAOImpl;
import com.entity.ConnectionDtls;


@WebServlet("/connection")
public class AddConnectionServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String connectionid = req.getParameter("connectionid");
		int customerid = Integer.parseInt(req.getParameter("customerid"));
		String connectiontype = req.getParameter("connectiontype");
		String connectionstartdate = req.getParameter("connectionstartdate");
		String occupation = req.getParameter("occupation");
		String connectionload = req.getParameter("connectionload");
		String plotno = req.getParameter("plotno");
		String city = req.getParameter("city");
		String pincode = req.getParameter("pincode");
		String address = req.getParameter("address");
		String state = req.getParameter("state");
		String description = req.getParameter("description");
		
		ConnectionDtls cd = new ConnectionDtls(connectionid,customerid,connectiontype,connectionstartdate,occupation,connectionload,plotno,city,pincode,address,state,description); 
		
		ConnectionDAOImpl dao = new ConnectionDAOImpl(DbConnect.getConn());
		
		boolean f = dao.addConnection(cd);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("successMsg", "Connection Data Added Successfully...");
			resp.sendRedirect("admin/addConnection.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something went Wrong..!!");
			resp.sendRedirect("admin/addConnection.jsp");
		}
	}	
}