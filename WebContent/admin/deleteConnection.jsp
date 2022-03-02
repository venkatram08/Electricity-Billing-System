<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	String connectionid = request.getParameter("id");
	try {
		Connection con = DbConnect.getConn();
		Statement st = con.createStatement();
		st.executeUpdate("delete from connection where connectionid='"+connectionid+"'");
		response.sendRedirect("viewConnection.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>