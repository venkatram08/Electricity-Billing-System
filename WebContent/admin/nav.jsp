
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="dashboard.jsp">Electricity Billing System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="dashboard.jsp"><i class="fas fa-home"></i> Home <span class="sr-only"></span></a>
      </li>
                
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-users"></i> Customer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addCustomer.jsp">Add Customer</a>
          <a class="dropdown-item" href="viewCustomer.jsp">View Customer</a>
        </div>
      </li>
      
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-plus"></i> Connection
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addConnection.jsp">Add Connection</a>
          <a class="dropdown-item" href="viewConnection.jsp">View Connection</a>
        </div>
      </li>
      
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-file-invoice"></i> Bill
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addBill.jsp">Add Bill</a>
          <a class="dropdown-item" href="viewBill.jsp">View Bill</a>
        </div>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="changePassword.jsp"><i class="fa fa-clone"></i> Change Password</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a>
      </li> 
      
    </ul>
  </div>
</nav>

