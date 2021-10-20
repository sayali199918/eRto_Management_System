<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import JSTL supplied core tag lib --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--import spring supplied JSP tag lib --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title> Permanent License</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</head>
<body>
	<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">

<h2 style="text-align:center;font-family:redressed,georgia,garamond,serif;">eRTO System</h2>
<p style="text-align:center; font-family:redressed,georgia,garamond,serif;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

  <ul class="nav nav-tabs">
    <li class="nav-item">
       <a class="nav-link text-dark" href="<spring:url value='/admin/ladmin'/>" class="text-white">Learning License List</a>
    </li>
    
    <li class="nav-item ">
      <a class="nav-link active " href="<spring:url value='/admin/padmin'/>">Permanent License List</a>
    </li>
    </ul>
    <nav class="navbar navbar-expand-sm">
    <ul class="navbar-nav ml-auto">
	<li class="nav-item ">
	
		<a class="nav-link" href="<spring:url value='/user/logout'/>"><button type="button" class="btn btn-outline-dark my-2 my-sm-0">Log Out</button></a>
	</li>
	</ul>
	</nav>
	
<div class="container-fluid">
               <input type="text" class="form-control" placeholder="Search.." id="myInput">

<hr/>	
	
<div class="container-fluid">
  <h2 class="bg-light" style="text-align: center; font-family:redressed,georgia,garamond,serif;">Permanent License List</h2>          
  <table class="table table-bordered table-hover table-secondary">
    <thead class="thead-dark">

			<tr>
				<th>Application Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Aadhar No</th>
				<th>District</th>
				<th>Status</th>
				<th>Action</th>


			</tr>
		</thead>
		<tbody  id="myTable">
			<c:forEach var="u" items="${requestScope.permanent_list}">
				<tr>
					<td>${u.applicantId}</td>
					<td>${u.firstName}</td>
					<td>${u.lastName}</td>
					<td>${u.email}</td>
					<td>${u.aadharNo}</td>
					<td>${u.district}</td>
					<td>${u.permanentStatus}</td>
					<td><a href="<spring:url value='/admin/pedit?vid=${u.applicantId}'/>">
							<input type="submit" value="Edit" class="btn btn-success " /></a> &nbsp;
							<a href="<spring:url value='/admin/pdelete?vid=${u.applicantId}'/>">
							<input type="submit" value="Delete" class="btn btn-danger " /></a>
							</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	
	<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
	
</body>
</html>