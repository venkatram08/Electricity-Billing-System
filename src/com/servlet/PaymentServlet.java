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
import com.entity.BillDtls;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		     
		    String status = req.getParameter("status");
			BillDtls e = new BillDtls();
			
			e.setStatus(status);
			
			
			
			BillDAOImpl dao = new BillDAOImpl(DbConnect.getConn());
			boolean f=dao.updateBill(e);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Bill Updated Successfully..");
				resp.sendRedirect("payment.jsp");
			}else {
				session.setAttribute("failedMsg", "Something Went Wrong..!!!");
				resp.sendRedirect("payment.jsp");
			}		
	} catch (Exception e) {
		e.printStackTrace();
	}	

	}

	
	
}
