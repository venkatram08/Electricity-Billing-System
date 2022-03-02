<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Bill</title>
<%@include file = "allCss.jsp" %>

<script>
function calc()
    {
        
     var totalunits1 = document.getElementById("totalunit").value;
     
     var chargeperunit1 = document.getElementById("chargeperunit").value;
     var totalamount = parseInt(totalunits1)*parseInt(chargeperunit1);
     
     document.getElementById("finalamount").value = totalamount;
    }


    function calunits()
    {
        
     var currentreading1 = document.getElementById("currentreading").value;
     
     var previousreading1 = document.getElementById("previousreading").value;
     var totalunits = parseInt(currentreading1)-parseInt(previousreading1);
     
     document.getElementById("totalunit").value = totalunits;
    }
</script>
</head>
<body>
  <%@include file = "nav.jsp" %>
  
    <%
		String successMsg = (String) session.getAttribute("successMsg");
		String errorMsg = (String) session.getAttribute("errorMsg");

		if (successMsg != null) {
	%>
	<script>
		alert("Bill Added Successfully");
		window.location.assign("viewBill.jsp");
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
      <h5 class="p-2" style="border-bottom: 2px solid orange">Add New Bill</h5>
      
      <div class="container-fluid">
        <form action="../bill" method="post">
          <div class="form-row">
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Consumer ID</label>
               <select id="connectionid" name ="connectionid" id ="connectionid" class="form-control">
                            
               <%
                    try
                    {
                    	Connection con= DbConnect.getConn();
	                    Statement st = con.createStatement();
	                    ResultSet rs = st.executeQuery("select * from connection");
	                    while(rs.next())
	                    {
	             %>	            
                 <option value="<%=rs.getString("connectionid")%>"><%=rs.getString("connectionid")%></option>
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
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Bill For Month</label>
               <input type="text" name="billformonth" id="billformonth" class="form-control" placeholder="Enter Bill For Month">
             </div>
            </div> 
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Current Reading</label>
               <input type="text" name="currentreading" id ="currentreading" class="form-control" placeholder="Enter Current Reading">
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Previous Reading</label>
               <input type="text" name="previousreading" id="previousreading" class="form-control" onkeyup="calunits()">
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Total Unit</label>
               <input type="text" name="totalunit" id="totalunit" class="form-control" placeholder="Enter Total Unit">
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Charge Per Unit</label>
               <input type="text" name="chargeperunit" id="chargeperunit" class="form-control" onkeyup="calc()">
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Final Amount</label>
               <input type="text" name="finalamount" id="finalamount" class="form-control">
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Due Date</label>
               <input type="date" name="duedate" id="duedate" class="form-control">
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