<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	int billid = Integer.parseInt(request.getParameter("id"));
	try {
		Connection con = DbConnect.getConn();
		Statement st = con.createStatement();
		st.executeUpdate("delete from bill where billid="+billid+"");
		response.sendRedirect("viewBill.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>