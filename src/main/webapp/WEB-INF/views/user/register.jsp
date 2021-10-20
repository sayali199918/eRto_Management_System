<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%--import , for the form binding tech , spring supplied form tag lib  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  
</head>
<body >

<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">

<h1 style="text-align:center;font-family:redressed,georgia,garamond,serif;">eRTO System</h1>
<p style="text-align:center; font-family:redressed,georgia,garamond,serif;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>


<nav class="navbar navbar-expand-sm sticky-top bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link "  href="<spring:url value='/'/>">Home</a>
    </li>
    
	<li class="nav-item">
      <a class="nav-link " href="<spring:url value='/user/contact'/>">Contact Us</a>
    </li>
   </ul>
   
   <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link"  href="<spring:url value='/user/login'/>" > <button type="button" class="btn btn-outline-light my-2 my-sm-0">Login</button></a>
    </li>
    
  </ul>
</nav>


<hr />
	
	<div class="row">
  <div class="col"></div>
  
  <div class="col">

  <div class="card " style="width:600px ; height:550px">
 
 
    <div class="card-header text-body" style="text-align:center;font-family:redressed,georgia,garamond,serif;"><h5>Register/SignUp</h5></div>
    
    <div class="card-body">
    
	<form method="post" class="was-validated">
		    <div class ="row"> <div class="col"><div class="form-group text-body">
				 <label for= "firstName">First Name</label>
				 <input type="text" class="form-control" placeholder="Enter First name" id="firstName" name="firstName" pattern="[A-Za-z]{3,10}" required >
        	
			 </div>
			 </div>
			 <div class ="col">
			 <div class="form-group text-body">
				<label for= "lastName" >Last Name</label>
				<input  type="text" class="form-control" placeholder="Enter Last name" id="lastName" name="lastName" pattern="[A-Za-z]{3,10}" required >
			
			 </div>
			 </div>
			 </div>		 
			 
             <div class="form-group text-body">
    			<label for="email">Email Id :</label>
  				<input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required >
  			
   					
 			 </div>
  			 <div class="form-group text-body">
    			<label for="password">Password:</label>
    			<input type="password" class="form-control" aria-describedby="passwordHelpBlock" placeholder="Enter password" id="password" name="password" pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])\S{8,20}" required >
    			<small id="passwordHelpBlock" class="form-text text-body">
                Your password must be 8-20 characters long .Must contain 1 capital letter and 1 number.Must not contain spaces or emoticons.
                </small>
   					
 			 </div>
  
  
 		 <button type="submit" class="btn btn-primary mx-auto d-block "  value="Register">Register/SignUp</button>
  
  <p class="text-body" style="text-align:center;"> <br> Already Registered ? <a href="<spring:url value='/user/login'/>" class="text-primary" style="text-decoration: underline;">Click Here to Login</a></p>

				
	</form>
	
</div>
</div>
</div>

<div class="col"></div>
</div>
	<hr />
</body>
</html>