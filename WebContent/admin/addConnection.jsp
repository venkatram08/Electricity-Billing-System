<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Connection</title>
<%@include file = "allCss.jsp" %>
</head>
<body>
  <%@include file = "nav.jsp" %>
  <br>
  
    <%
		String successMsg = (String) session.getAttribute("successMsg");
		String errorMsg = (String) session.getAttribute("errorMsg");

		if (successMsg != null) {
	%>
	<script>
		alert("Connection Data Added Successfully...");
		window.location.assign("viewConnection.jsp");
	</script>
	<%
		session.removeAttribute("successMsg");
		}
	%>
	<%
		if (errorMsg != null) {
	%>
	<script>
		alert("Something went Wrong..!!");
	</script>
	<%
		session.removeAttribute("errorMsg");
		}
	%>
	
	
  <div class="card shadow m-5">
    <div class="card-body">
      <h5 class="p-2" style="border-bottom: 2px solid orange">Add New Connection</h5>
      
      <div class="container-fluid">
        <form action="../connection" method="post">
          
          <div class="form-row">
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>10 Digit Connection ID</label>
               <input type="number" name="connectionid" class="form-control" placeholder="Enter 10 digit Connection ID" pattern="[0-9]+" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Customer Name</label>              
               <select id="customerid" name ="customerid" class="form-control">
                
               
               <%
                    try
                    {
                    	Connection con= DbConnect.getConn();
	                    Statement st = con.createStatement();
	                    ResultSet rs = st.executeQuery("select * from customer");
	                    while(rs.next())
	                    {
	             %>
	            
                <option value="<%=rs.getString("customerid")%>"><%=rs.getString("customername")%> [<%=rs.getString("customerid")%>]</option>
               
	                   
	             <%	             
	                     }
	                    %>
	                    </select>
	                    <%
                       }
		    		    catch(Exception e){
     		    	        System.out.println(e);
                        }
				   %>
				  
             </div>
            </div> 
            
            <div class="col-sm-3">
             <div class="form-group">
               <label>Connection Type</label>
               <select id="inputConnection" name ="connectiontype" class="form-control">
                <option selected>Residential</option>
                <option>Commercial</option>
               </select>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Connection Start Date</label>
               <input type="date" name="connectionstartdate" id="connectionstartdate" class="form-control"required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Occupation</label>
               <input type="text" name="occupation" id="occupation" class="form-control" placeholder="Enter Occupation" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Load</label>
               <input type="number" name="connectionload" id="connectionload" class="form-control" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Plot No.</label>
               <input type="number" name="plotno" id="plotno" class="form-control" placeholder="Enter Plot No." required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>City</label>
               <input type="text" name="city" id="city" class="form-control" placeholder="Enter city" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Pincode</label>
               <input type="number" name="pincode" id="pincode" class="form-control" placeholder="Enter pincode" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Address</label>
               <textarea name="address" id="address"class="form-control" rows="2"></textarea>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>State</label>
               <input type="text" name="state" id="state" class="form-control" placeholder="Enter State" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Description</label>
               <textarea name="description" class="form-control" rows="2"></textarea>
             </div>
            </div>
                      
          </div>          
          <hr>
        <input type="submit" value="Submit" class="btn btn-primary">
        </form>
      </div>
    </div>
  </div>
  
</body>
</html>