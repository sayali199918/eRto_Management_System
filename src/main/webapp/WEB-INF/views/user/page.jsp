<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%--import , for the form binding tech , spring supplied form tag lib  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<head>
<title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    .col {
      background-color: lavender;
      border: 1px solid gray;
</style>
<style>
         hr{
	    	background: white;	
	    	}
		.DL{
			
			margin-top: 20px;
			padding: 20px;
			box-shadow: 0px 0px 10px 3px grey;
		}
		.LL{
			
			margin-top: 20px;
			padding: 20px;
			box-shadow: 0px 0px 10px 3px grey;
		}
   </style>
</head>
<body>

<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">
<h1 style="text-align:center;">eRTO System</h1>
<p style="text-align:center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
  <ul class="navbar-nav mr-auto">
    
        
    <li class="nav-item">
      <a class="nav-link active" href="<spring:url value='/user/page'/>">Home </a>
    </li>
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        License
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="<spring:url value='/license/learning'/>">Learning License </a>
        <a class="dropdown-item" href="<spring:url value='/license/permanent'/>">Permanent License </a>
      </div>
    </li>
    
    <li class="nav-item ">
      <a class="nav-link" href="<spring:url value='/user/mocktest'/>">Mock Test </a>
    </li>

	<li class="nav-item ">
	<a class="nav-link" href="<spring:url value='/user/status'/>">Status </a>
	</li>
    
	</ul>
   
   <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link"  href="<spring:url value='/user/logout'/>" > <button type="button" class="btn btn-info btn-sm">Log Out</button></a>
    </li>
    
  </ul>
</nav>


<div class="container LL bg-dark text-white">
	<h1>Learning License</h1>
	<hr>
	<div class="row">
       <div class="col-md-6">
       	<h4>Need for a Driving License</h4>
       	<p>No person shall drive a motor vehicle in any public place unless he holds an effective driving license issued to him by the licensing authority , authosrising him to drive the vehicle.</p>
		<br>
		<h4>Licensing Authorities</h4>
		<p>The joint commisioner/deputy commisioner and the regional transport officers are the licensing authorities. The administrative officers and motor vehicle inspectors are the additional licensing authorities.</p>
	   </div>

       <div class="col-md-6">
       	<h4>Age limit to obtain Driving License</h4>
         <p>-An applicant who has completed sixteen years of age is eligible to apply for a driving license to drive a motor cycle with engine capacity below 55 cc subject to the condition that the parent or guardian should furnish a declaration in the manner prescribed.</p>
		 <p>-The applicant who has completed the age of eighteen years of age is eligible to apply for a driving license to drive a motor vehicle other than a transport vehicle.</p>
		 <p>-An applicant who has completed twenty years of age will be eligible for applying for a license to drive a transport vehicle.</p>
       </div>
    </div>
</div>


<div class="container DL bg-dark text-white">
	<h1>Permanent License</h1>
	<hr>
	<div class="row">
       <div class="col-md-6">
       	<p>The faculty of online slot booking for test of completence of driving license has been provided. Please visit the website for scheduling an appointment.</p>
		<br>
		<h4>Procedure:</h4>
		<p>-Schedule an appointment for the test of competence online by visiting the website or any RTO office where such facility exists. In other cases schedule an appointment directly at the office concerned.</p>
		<p>-An application in Form 4, for a permanent driving license shall be made along with the learner's license obtained for such class of vehicle.</p>
		<p>-The applicant who has held a valid Learner's license, for a period of at least 30 days, shall be competent to appear for the test of competence.</p>
	 </div>

       <div class="col-md-6">
         <p>-The test of competence will be conducted by the competent authority.</p>
		 <p>-The applicant should bring a vehicle of the type to which the application relates.</p>
		 <p>-The application should satisfy the officer conducting the test regarding his capability to drive the vehicle and his ability to perform the tasks specified in Rule-15(2) of the CMVR.</p>
		 <p>-The candidate who passes the test of competence successfully will be issued with a driving license and sent through speed post to the address furnished.</p>
		 <p>-Fees as prescribed along with user charges.</p>
       </div>
    </div>
</div>


<hr />

	<div class ="container-fluid  pt-2 p-1 my-1 bg-dark text-white footer ">
<p style="text-align:center; font-family:redressed,georgia,garamond,serif;">©Copyright-2021 eRTO System<br>Love from JALGAON❤️</p>
</div>

</body>
</html>