<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%--import , for the form binding tech , spring supplied form tag lib  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">
<h2 style="text-align:center;">eRTO System</h2>
<p style="text-align:center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

	<div class="container" align="center">
		<div class="row">
			<div class="col-md-12">
			<div class="card">
  				<div class="card-header"><h3>Your Form Is Submitted!</h3>
					<h4>Mail regarding driving test will reach you in sometime!</h4></div>
  						<div class="card-body">
  						<div class="list-group">
  						<!-- <h4 class="bg-secondary"><a class="list-group-item list-group-item-secondary">Documents Required:</a></h4>
  						<a class="list-group-item">Aadhaar Card</a>
  						<a class="list-group-item">Electricity bill</a>
						<a class="list-group-item">1 passport sized photograph</a> -->
					</div>
					
					</div>
						
					
					
			 <div class="card-footer">
					<br> <a href="<spring:url value='/user/status'/>"
						class="btn btn-success"> Check Your Status </a>&nbsp;&nbsp;
					 <a href="<spring:url value='/user/logout'/>"
							class="btn btn-primary"> LogOut</a>&nbsp;&nbsp;&nbsp;
					
	</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>