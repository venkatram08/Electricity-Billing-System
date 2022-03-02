<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Change Password</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="nav.jsp"%>
    <br><br>

	<%
		String msg = request.getParameter("msg");
		if ("notMatch".equals(msg)) {
	%>
	<script>
		alert("New password and Confirm password does not match!");
		window.location.assign("changePassword.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("wrong".equals(msg)) {
	%>
	<script>
		alert("Your old Password is wrong!");
		window.location.assign("changePassword.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("done".equals(msg)) {
	%>
	<script>
		alert("Password changed successfully!");
		window.location.assign("../adminlogin.jsp");
	</script>

	<%
		}
	%>
	<div class="container">
		<div class="card shadow" style="min-height: 50vh">
			<div class="card-body">
				<h2 class="text-danger text-center mt-2"
					style="border-bottom: 2px solid orange">Change Password</h2>

				<div class="container-fluid mt-5">
				<div class="row">
				<div class="col-sm-6 offset-sm-3">
					<form action="changePasswordAction.jsp" method="post"
						name="changepassword">

						<div class="form-row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Current Password</label> <input type="password"
										name="oldpassword" class="form-control"
										placeholder="Enter Current Password" required>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>New Password</label> <input type="password"
										name="newpassword" class="form-control"
										placeholder="Enter New Password" required>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Confirm New Password</label> <input type="password"
										name="confirmpassword" class="form-control"
										placeholder="Enter New Password Again" required>
								</div>
							</div>
						</div>
						<input type="submit" value="Submit" class="btn btn-primary">
					</form>
					</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>

	</div>
	</div>
</body>
</html>