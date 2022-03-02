<%@page import="com.conn.DbConnect"%>
<%@page import="com.entity.CustomerDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.CustomerDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="nav.jsp"%>

    <%
		String msg = request.getParameter("msg");
		if ("deleted".equals(msg)) {
	%>
	<script>
		alert("Customer Record Deleted !!");
		window.location.assign("viewCustomer.jsp");
	</script>
	<%
		}
	%>
	<div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<h4 class="text-center text-danger">All Customers</h4>
		<br>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead style="background-color: #9e9e9e">
				<tr>
					<th class="text-danger">Customer Name</th>
					<th class="text-danger">Contact</th>
					<th class="text-danger">Email Id</th>
					
					<th class="text-danger">Address</th>
					<th class="text-danger">City</th>
					<th class="text-danger">State</th>
					<th class="text-danger">Delete</th>
				</tr>
			</thead>
			<tbody>
			   <%
				  CustomerDAOImpl dao = new CustomerDAOImpl(DbConnect.getConn());
				  List<CustomerDtls> list = dao.getViewCustomer();
				  for (CustomerDtls n : list) {
			   %>
			   <tr>
				    <td><%=n.getCustomername()%></td>
				    <td><%=n.getContact()%></td>
					<td><%=n.getEmail()%></td>
					
					<td><%=n.getAddress()%></td>
					<td><%=n.getCity()%></td>
					<td><%=n.getState()%></td>
					<td><a href="deleteCustomer.jsp?id=<%=n.getCustomerid()%>" class="text-danger"
						   onclick="return confirm('Are You Sure ?')">Remove</a></td>
					</tr>
				<%
				  }
				%>
			</tbody>
		</table>
	</div>
	
</body>
</html>