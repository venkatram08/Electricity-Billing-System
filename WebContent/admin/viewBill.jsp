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
		alert("Customer Record Deleted !!");
		window.location.assign("viewBill.jsp");
	</script>
	<%
		}
	%>
	
    <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<h4 class="text-center text-danger">View Bill</h4>
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
					<th class="text-danger">Delete</th>
				</tr>
			</thead>
			<tbody>
			   <%
				  BillDAOImpl dao = new BillDAOImpl(DbConnect.getConn());
				  List<BillDtls> list = dao.getViewBill();
				  for (BillDtls n : list) {
			   %>
			   <tr>
				    <td><%=n.getBillid()%></td>
				    <td><%=n.getConnectionid()%></td>
					<td><%=n.getBillformonth()%></td>
					<td><%=n.getCurrentreading()%></td>
					<td><%=n.getPreviousreading()%></td>
					<td><%=n.getTotalunit()%></td>
					<td><%=n.getChargeperunit()%></td>
					<td><%=n.getFinalamount()%></td>
					<td><%=n.getDuedate()%></td>
					<td><%=n.getStatus()%></td>
					<td><a href="deleteBill.jsp?id=<%=n.getBillid()%>" class="text-danger"
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