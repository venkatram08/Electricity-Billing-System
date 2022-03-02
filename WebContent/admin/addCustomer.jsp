<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Customer</title>
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
		alert("Customer Data Added Successfully...");
		window.location.assign("viewCustomer.jsp");
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
		window.location.assign("addCustomer.jsp");
	</script>
	<%
		session.removeAttribute("errorMsg");
		}
	%>
	
  <div class="card shadow m-5">
    <div class="card-body">
      <h5 class="p-2" style="border-bottom: 2px solid orange">Add New Customer</h5>
      
      <div class="container-fluid">
        <form action="../customer" method="post" onsubmit="return MobileValidate()">
          <div class="form-row">
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Customer Name</label>
               <input type="text" name="customername" id="customername" class="form-control" placeholder="Enter Customer Name" required>
             </div>
            </div>
            
           <div class="col-sm-12">
             <div class="form-group">
               <label>Contact</label>
               <input type="number" name="contact" id="contact" class="form-control" placeholder="Enter Contact Number" pattern="[0-9]+" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Email Id</label>
               <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email Id" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>Password</label>
               <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
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
               <label>City</label>
               <input type="text" name="city" id="city" class="form-control" placeholder="Enter City" required>
             </div>
            </div>
            
            <div class="col-sm-12">
             <div class="form-group">
               <label>State</label>
               <input type="text" name="state" id="state" class="form-control" placeholder="Enter State" required>
             </div>
            </div>
                      
          </div> 
          
          <hr>
        <input type="submit" value="Submit" class="btn btn-primary">
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript">
		function MobileValidate() {
			var contact = document.getElementById("contact").value;
			var contactTenDigit = /^\d{10}$/;
			if (contact != '') {
				if (contact.match(contactTenDigit)) {
					return true;
				} else {
					alert("Enter Ten Digit Mobile Number");
					return false;
				}
			}
		}
</script>
</body>
</html>