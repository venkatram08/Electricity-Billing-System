<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">

body {
	background: url("https://cdn.vox-cdn.com/thumbor/LqAvrxPdAKD7Zt3crr3nTxg5AhI=/0x0:4096x3072/1200x800/filters:focal(2379x832:3033x1486)/cdn.vox-cdn.com/uploads/chorus_image/image/58828989/shutterstock_101806765.0.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
	width: 100%;
	height: 10vh;
}

.container1 
{
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

@-webkit-keyframes glow {
  from { 
  text-shadow :0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073,
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
 

</body>
</html>





	

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">



  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: BizLand - v3.7.0
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.html">ElecTro<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
<div class="container mt-5">
		<h1 class="text-center "></h1>

		<div class="col-sm-8 m-auto d-block">
			<div class="card">
				<div class="card-body">					
					  <form action="viewmybill.jsp" method="post">	
						<div class="form-group">
							<label><b>Enter 10 Digit Consumer Number</b></label>
							<input type="number" name="search" class="form-control"	placeholder="10 Digit Consumer Number" required>
						</div><br>
						<div class="form-group">
					      <input type="submit" value="Submit" class="btn btn-primary btn-lg btn-block">	
					    </div>
					  </form>					
				 </div>
			</div>
		</div>
	</div> 