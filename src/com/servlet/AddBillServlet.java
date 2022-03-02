package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.BillDAOImpl;
import com.dao.ConnectionDAOImpl;
import com.entity.BillDtls;
import com.entity.ConnectionDtls;

@WebServlet("/bill")
public class AddBillServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String connectionid = req.getParameter("connectionid");
		String billformonth = req.getParameter("billformonth");
		String currentreading = req.getParameter("currentreading");
		String previousreading = req.getParameter("previousreading");
		String totalunit = req.getParameter("totalunit");
		String chargeperunit = req.getParameter("chargeperunit");
		String finalamount = req.getParameter("finalamount");
		String duedate = req.getParameter("duedate");
		String status = req.getParameter("status");
		
		
		BillDtls bd = new BillDtls(connectionid,billformonth,currentreading,previousreading,totalunit,chargeperunit,finalamount,duedate,status); 
		
		BillDAOImpl dao = new BillDAOImpl(DbConnect.getConn());
		
		boolean f = dao.addBill(bd);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("successMsg", "Bill Added Successfully");
			resp.sendRedirect("admin/addBill.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something went Wrong..!!");
			resp.sendRedirect("admin/addBill.jsp");
		}
	}	
}