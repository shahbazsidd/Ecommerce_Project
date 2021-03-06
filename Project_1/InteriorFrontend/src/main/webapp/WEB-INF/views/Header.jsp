<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap css file -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  
  <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="row" style="border-color:red;">
  <div class="col" style="background-color:Orange;">
  	<h1 class="display-4 p-2" >NovaDesigns.com</h1>
  	<p class="p-2">-Best Architecture Designs</p>
  </div>
</div>

<div class="row">
	<div class="col">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    	<li class="nav-item active">
        <a class="nav-link" href="<c:url value="/"/>">Home&nbsp;<span class="sr-only">(current)</span></a>
        </li>
      <c:if test="${!sessionScope.loggedIn}">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account&nbsp;
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="login">Login</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="register">Register</a>
        </div>
      </li>
      </c:if>
       
      <li class="nav-item">
        <a class="nav-link" href="aboutus">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactus">Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="productdisplay">Show Products</a>
      </li>
      <c:if test="${sessionScope.loggedIn}">
      <c:if test="${sessionScope.role=='ADMIN'}">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Pages
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="category">Manage Category</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="product">Manage Products</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="supplier">Manage Supplier</a>
        </div>
      </li>
      </c:if>
      <c:if test="${sessionScope.role=='USER'}">
      
      <li class="nav-item">
        <a class="nav-link" href="cart">My Cart</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="userprofile">My Profile</a>
      </li>
      </c:if>
      </c:if>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</div>
</div>
<c:if test="${sessionScope.loggedIn}">
<div class="row">
	<div class="col">
		<div class="container">
			<div class="d-flex justify-content-end">
			<h5>Hi!<f style="color:Blue;"> ${username}&nbsp;|&nbsp;</f><a href="${page.ConText.request.context.Path}/InteriorFrontend/perform_logout" data-toggle="tooltip" data-placement="bottom" title="Logout!"><i class="fa fa-sign-out fa-1x" style="color:red;"></i></a></h5>
		    </div>
		</div>
	</div>
</div>
</c:if>

  <!-- JQuery file --> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- Popper file -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <!-- Bootstrap js file -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

