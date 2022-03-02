<%@page import="java.sql.*"%>
<%@page import="com.entity.BillDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.BillDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View : User Bill</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
  <%@include file="all_component/navbar.jsp" %>
  
  <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<h4 class="text-center text-danger">View Latest Pending Bill</h4>
		<br>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead style="background-color: #9e9e9e">
				<tr>
					<th class="text-danger">Bill ID</th>
					<th class="text-danger">Connection ID</th>
					<th class="text-danger">Bill For Month</th>
					<th class="text-danger">Current Reading</th>
					<th class="text-danger">Previous Reading</th>
					<th class="text-danger">Total Units</th>
					<th class="text-danger">Charge Per Unit</th>
					<th class="text-danger">Final Amount</th>
					<th class="text-danger">Due Date</th>
					<th class="text-danger">Status</th>
					<th class="text-danger">Action</th>
				</tr>
			</thead>
			<tbody>
			  
			   
			   <%
			       //String status="";
				 	try {
					String search = request.getParameter("search");
					Connection con = DbConnect.getConn();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from bill where connectionid ='"+search+"' and status='Not Paid'");
					while (rs.next()) {
						 
			   %> 
			   <tr>
				    <td><%=rs.getInt("billid")%></td>
				    <td><%=rs.getString("connectionid")%></td>
					<td><%=rs.getString("billformonth")%></td>
					<td><%=rs.getString("currentreading")%></td>
					<td><%=rs.getString("previousreading")%></td>
					<td><%=rs.getString("totalunit")%></td>
					<td><%=rs.getString("chargeperunit")%></td>
					<td><%=rs.getString("finalamount")%></td>
					<td><%=rs.getString("duedate")%></td>
					<td><%=rs.getString("status")%></td>
					<td><a href="payment.jsp?id=<%=rs.getInt("billid")%>" class="text-primary">Pay Now</a></td>
					</tr>
					
					<%
						}
					%>
				
			</tbody>
		</table>
	</div> 
	            <%
					
					} catch (Exception e) {
						System.out.println(e);
					}
				%>
</body>
</html>