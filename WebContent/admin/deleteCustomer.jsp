<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	int customerid = Integer.parseInt(request.getParameter("id"));
	try {
		Connection con = DbConnect.getConn();
		Statement st = con.createStatement();
		st.executeUpdate("delete from customer where customerid="+customerid+"");
		response.sendRedirect("viewCustomer.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>