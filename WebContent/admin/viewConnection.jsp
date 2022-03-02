<%@page import="com.entity.ConnectionDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ConnectionDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file = "allCss.jsp" %>
</head>
<body>
   <%@include file = "nav.jsp" %>
   
   <%
		String msg = request.getParameter("msg");
		if ("deleted".equals(msg)) {
	%>
	<script>
		alert("Connection Record Deleted !!");
		window.location.assign("viewConnection.jsp");
	</script>
	<%
		}
	%>
   <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<h4 class="text-center text-danger">View All Connection</h4>
		<br>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead style="background-color: #9e9e9e">
				<tr>
				    <th class="text-danger">Connection Id</th>
					<th class="text-danger">Customer Id</th>
					<th class="text-danger">Connection Type</th>
					<th class="text-danger">Connection Start Date</th>
					<th class="text-danger">Occupation</th>
					<th class="text-danger">Load</th>
					<th class="text-danger">Plot No.</th>
					<th class="text-danger">City</th>
					<th class="text-danger">Pincode</th>
					<th class="text-danger">Address</th>
					<th class="text-danger">State</th>
					<th class="text-danger">Description</th>
					<th class="text-danger">Delete</th>
				</tr>
			</thead>
			<tbody>
			   <%
				  ConnectionDAOImpl dao = new ConnectionDAOImpl(DbConnect.getConn());
				  List<ConnectionDtls> list = dao.getViewConnection();
				  for (ConnectionDtls n : list) {
			   %>
			   <tr>
				    <td><%=n.getConnectionid()%></td>
				    <td><%=n.getCustomerid() %></td>
				   	<td><%=n.getConnectiontype()%></td>
					<td><%=n.getConnectionstartdate()%></td>
					<td><%=n.getOccupation()%></td>
					<td><%=n.getConnectionload()%></td>
					<td><%=n.getPlotno()%></td>
					<td><%=n.getCity()%></td>
					<td><%=n.getPincode()%></td>
					<td><%=n.getAddress()%></td>
					<td><%=n.getState()%></td>
					<td><%=n.getDescription()%></td>
					<td><a href="deleteConnection.jsp?id=<%=n.getConnectionid()%>"" class="text-danger"
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