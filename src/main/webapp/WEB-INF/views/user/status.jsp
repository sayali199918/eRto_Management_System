<%@page isELIgnored="false" %>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>Status</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>	

<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">
<h1 style="text-align:center;">eRTO System</h1>
<p style="text-align:center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
  <ul class="navbar-nav mr-auto">
    
        
    <li class="nav-item">
      <a class="nav-link" href="<spring:url value='/user/page'/>">Home </a>
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
	<a class="nav-link active" href="<spring:url value='/user/status'/>">Status </a>
	</li>
    
	</ul>
   
   <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link"  href="<spring:url value='/user/logout'/>" > <button type="button" class="btn btn-info btn-sm">Log Out</button></a>
    </li>
    
  </ul>
</nav>

<br>



<div class="container" align="center">
    <div class="card">
	<div class="card-header text-body" ><h5 class="text-body" style="font-family:redressed,georgia,garamond,serif;"> Know Your Status</h5></div>
	<div class="card-body">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                
                <div id="accordion">
                
                    <div class="card">
                    <a class="card-link" data-toggle="collapse" href="#collapseLearning">
  					<div class="card-header text-body" >
  					<h5 class="text-body" style="font-family:redressed,georgia,garamond,serif;"> Click Here To Know Your Learning License Status</h5>
  					</div></a>
  					
  					<div id="collapseLearning" class="collapse" data-parent="#accordion">
  					<div class="card-body"> 
                    <h5 hidden="true">${userId} </h5>
                    <br>
              
					<div class="alert alert-primary">
 					 <strong>${learningBooked2} &nbsp; : &nbsp; </strong>${learningBooked3} &nbsp; &nbsp;
					</div>
						
						<div class="alert alert-primary">
 					 <strong>${writtenTestSlot2}&nbsp; : &nbsp; </strong>${writtenTestSlot3}&nbsp; &nbsp;
					</div>
					
					<div class="alert alert-primary">
 					 <strong>${writtenTestStatus2}&nbsp; : &nbsp; </strong>${writtenTestStatus3}&nbsp; &nbsp; 
					</div>
					
					<div class="alert alert-primary">
 					 <strong>${learningCompleted2}&nbsp; : &nbsp; </strong>${learningCompleted3}&nbsp; &nbsp; 
					</div>
             		   
                		</div>
                		</div>
                		</div>
                		
                		<br>
                		
                	<div class="card">
                    <a class="card-link" data-toggle="collapse" href="#collapsePermanent">
  					<div class="card-header text-body" >
  					<h5 class="text-body" style="font-family:redressed,georgia,garamond,serif;"> Click Here To Know Your Permanent License Status</h5>
  					</div></a>
  					
  					<div id="collapsePermanent" class="collapse" data-parent="#accordion">
  					<div class="card-body"> 
                    <h5 hidden="true">${userId} </h5>
                    <br>
              
					<div class="alert alert-primary">
 					 <strong>${permanentBooked1} &nbsp; : &nbsp; </strong>${permanentBooked2} &nbsp; &nbsp;
					</div>
						
						<div class="alert alert-primary">
 					 <strong>${drivingTestSlot1}&nbsp; : &nbsp; </strong>${drivingTestSlot2}&nbsp; &nbsp;
					</div>
					
					<div class="alert alert-primary">
 					 <strong>${drivingTestStatus1}&nbsp; : &nbsp; </strong>${drivingTestStatus2}&nbsp; &nbsp; 
					</div>
					
					<div class="alert alert-primary">
 					 <strong>${permanentCompleted1}&nbsp; : &nbsp; </strong>${permanentCompleted2}&nbsp; &nbsp; 
					</div>
             		   
                		</div>
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
								

	