<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	String email = session.getAttribute("email").toString();
	String oldpassword = request.getParameter("oldpassword");
	String newpassword = request.getParameter("newpassword");
	String confirmpassword = request.getParameter("confirmpassword");

	if (!confirmpassword.equals(newpassword))
		response.sendRedirect("changePassword.jsp?msg=notMatch");
	else {
		int check = 0;
		try {
			Connection con = DbConnect.getConn();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
					"select * from admin where email='" + email + "' and password='" + oldpassword + "'");
			while (rs.next()) {
				check = 1;
				st.executeUpdate("update admin set password='" + newpassword + "' where email='" + email + "'");
				response.sendRedirect("changePassword.jsp?msg=done");
			}
			if (check == 0)
				response.sendRedirect("changePassword.jsp?msg=wrong");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
%>