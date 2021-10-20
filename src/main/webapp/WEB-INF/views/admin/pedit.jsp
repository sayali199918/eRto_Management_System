<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%--import , for the form binding tech , spring supplied form tag lib  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Apply For Learner's License</title>
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

<div class ="container-fluid p-3 my-3 bg-dark text-white">
<h2 style="text-align:center;">eRTO System</h2>
<p style="text-align:center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

<div class="row">
  <div class="col"></div>
  
  <div class="col">
  <div class="card bg-light " style="width:600px ; height:1350px">
    <div class="card-header" style="text-align:center;"><h5>Permanent License</h5></div>
    <div class="card-body">
    
	<form:form method="post" modelAttribute="permanent_user_details" >
	   
		 <table class="table table-hover">
		 <tbody>
		   
			<tr>
				<td>First Name</td>
				<td><form:input path="firstName" class="form-control" disabled="true"/></td>
				
			</tr>
			
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastName" class="form-control" disabled="true"/></td>
				
			</tr>

			<tr>
				<td>User Email</td>
				<td><form:input path="email" class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>Aadhar No</td>
				<td><form:input path="aadharNo"  class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>Mobile No</td>
				<td><form:input path="mobileNo"  class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>Birth Date</td>
				<td><form:input type="date" path="dob" class="form-control" disabled="true"/></td>
				
			</tr>

			<tr>
				<td> Gender</td>
				<td><form:input path="gender" class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>Blood Group</td>
				<td><form:input path="bloodGroup" class="form-control" disabled="true"/></td>
				
			</tr>

			<tr>
				<td>Identification Mark</td>
				<td><form:input path="identificationMark" class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>State</td>
				<td><form:input path="state" class="form-control" disabled="true"/></td>
				
				
			</tr>

			<tr>
				<td>District</td>
				<td><form:input path="district" class="form-control" disabled="true"/></td>
				
			</tr>
			<tr>
				<td>Pin code</td>
				<td><form:input path="pincode" class="form-control" disabled="true"/></td>
				
			</tr>

			<tr>
				<td>Village</td>
				<td><form:input path="village" class="form-control" disabled="true"/></td>
				
			</tr>

			<tr>
				<td>Landmark</td>
				<td><form:input path="landmark" class="form-control" disabled="true"/></td>
			
			</tr>

			<tr>
				<td>Street</td>
				<td><form:input path="street" class="form-control" disabled="true"/></td>
				
			</tr>
			<tr>
				<td>Created At</td>
				<td><form:input path="createdAt" class="form-control" disabled="true"/></td>
				
			</tr>
			
			
			
			<tr>
				<td>Driving Test Date:</td>
				<td><form:input type="date" path="appointmentDate" class="form-control" disabled="true"/></td>
			</tr>

			<tr>
				<td>Driving Test Time</td>
				<td><form:input type="time" path="appointmentTime" class="form-control" disabled="true"/></td>
			</tr>

			<tr>
				<td>AppomintmentStatus:</td>
				<td><form:select path="permanentStatus" class="form-control">
				 <form:option value="BOOKED" label="BOOKED"/>
				 <form:option value="DRIVINGSLOTISSUED" label="DRIVINGSLOTISSUED"/>  
               
                 <form:option value="DRIVINGPASS" label="DRIVINGPASS"/>
                 <form:option value="DRIVINGFAIL" label="DRIVINGFAIL"/>
                 <form:option value="COMPLETED" label="COMPLETED"/>
                  <form:option value="REJECTED" label="REJECTED"/>
                 </form:select>  
               </td>
				<td><form:errors path="permanentStatus" /></td>
			</tr>
			
				
			
			<tr>
			<td></td>
				<td><input type="submit" value="Save" class="btn btn-primary "/></td>
			<td></td>
			</tr>
		</tbody>
		</table>
		
	</form:form>
	</div>
		</div>
		</div>
		<div class="col"></div>
		</div>
		<hr />
</body>
</html>





