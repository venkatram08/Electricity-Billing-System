<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Dashboard</title>
<%@include file="allCss.jsp"%>

<style type="text/css">

body {
	background: url("https://images.ctfassets.net/0fol1oltsp9p/5CNY7U5znvqcNLCAGfTMJr/7c3857c9b598cfa16b0d550189bd6bb1/How_Much_Does_Electricity_Cost.jpg?w=920");
	background-size: 100%;
	background-repeat: no-repeat;
	width: 100%;
	height: 10vh;
}

.container1 {
	background-color: lightgrey;
	border-radius: 8px;
}

h2, h4 {
	padding: 10px;
}

.mydiv:hover {
	transform: translateY(-10px)
}

.glow {
	font-size: 80px;
	color: #fff;
	text-align: center;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {from { text-shadow :0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073,
	0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
	
}

to {
	text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px
		#ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
}
}
</style>
</head>
<body>
	<%@include file="nav.jsp"%>
     <br>
     <div class="container mt-5">
		<div class="row">
           <%
			try {
				int count = 0;
				Connection con = DbConnect.getConn();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from customer ");
				while (rs.next()) {
					count++;
				}
		    %>
			<div class="col-sm-4 text-center mydiv">
				<div class="container1">
					<h2 class="text-primary"><%out.println(count);%></h2>
					<a href="viewCustomer.jsp"><h4 class="text-dark">Total Customers</h4></a>
				</div>
			</div>
           <%
			
		   %>
			<div class="col-sm-4 text-center mydiv">
			 <%
				int count1 = 0;
					ResultSet rs1 = st.executeQuery("select * from connection ");
					while (rs1.next()) {
						count1++;
					}
			 %>
				<div class="container1">
					<h2 class="text-primary"><%out.println(count1);%></h2>
					<a href="viewConnection.jsp"><h4 class="text-dark">Total Connection</h4></a>
				</div>
			</div>

			<div class="col-sm-4 text-center mydiv">
			 <%
				int count2 = 0;
					ResultSet rs2 = st.executeQuery("select * from bill");
					while (rs2.next()) {
						count2++;
					}
			 %>
				<div class="container1">
					<h2 class="text-primary"><%out.println(count2);%></h2>
					<a href="viewBill.jsp"><h4 class="text-dark">Total Bill</h4></a>
				</div>
			</div>
						
		</div>
	</div>
    <%
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
	
</body>
</html>