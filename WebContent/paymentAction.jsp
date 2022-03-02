<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%
 int billid=Integer.parseInt(request.getParameter("billid"));
 //String status=request.getParameter("status");

 try
 {
	 Connection con = DbConnect.getConn();
	 PreparedStatement ps=con.prepareStatement("update bill set status='paid' where billid=?");
	 //ps.setString(1, status);
	 ps.setInt(1, billid);
	 ps.executeUpdate();
	 response.sendRedirect("payment.jsp?msg=valid");
 }
 catch(Exception e)
 {
	 response.sendRedirect("payment.jsp?msg=invalid");
 }
%>