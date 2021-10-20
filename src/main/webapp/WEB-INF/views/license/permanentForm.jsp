<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%--import , for the form binding tech , spring supplied form tag lib  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Apply For Permanent License</title>
<meta charset="utf-8">
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

	<div class="container-fluid p-1 my-3 bg-success text-white">
		<h2 style="text-align: center;">eRTO System</h2>
		<p style="text-align: center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
	</div>



	<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="<spring:url value='/user/page'/>">Home </a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#" id="navbardrop"
				data-toggle="dropdown"> License </a>
				<div class="dropdown-menu">
					<a class="dropdown-item"
						href="<spring:url value='/license/learning'/>">Learning
						License </a> <a class="dropdown-item"
						href="<spring:url value='/license/permanent'/>">Permanent
						License </a>
				</div></li>

			<%-- <li class="nav-item "><a class="nav-link"
				href="<spring:url value='/user/mocktest'/>">Mock Test </a></li> --%>

			<li class="nav-item "><a class="nav-link"
				href="<spring:url value='/user/status'/>">Status </a></li>

		</ul>

		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="<spring:url value='/user/logout'/>">
					<button type="button" class="btn btn-info btn-sm">Log Out</button>
			</a></li>

		</ul>
	</nav>

	<hr />


	<div class="row">
		<div class="col"></div>

		<div class="col">

			<div class="card bg-light " style="width: 600px; height: 1265px">
				<div class="card-header" style="text-align: center;">
					<h5>Apply For Permanent License</h5>
				</div>
				<div class="card-body">

					<form:form  method="post" modelAttribute="puser_details">
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="firstName">First Name</label>
									<form:input path="firstName" class="form-control" />

								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="lastname">Last Name</label>
									<form:input path="lastName" class="form-control" />

								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email">Email Id :</label>
							<form:input path="email"  class="form-control" />


						</div>
						<div class="form-group">
							<label for="aadharNo">Aadhar No.</label>
							<form:input path="aadharNo" class="form-control" />
						</div>

						<div class="form-group">
							<label for="mobileNo">Mobile No.</label>
							<form:input path="mobileNo" class="form-control"
								pattern="^[+]91(9|8|7)\d{9}$" />
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="dob">Choose Birth Date</label>
									<form:input type="date" path="dob" class="form-control" />
								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="gender">Gender</label>
									<form:input path="gender" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="bloodGroup">Blood Group</label>
									<form:input path="bloodGroup" class="form-control" />

								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="identificationMark">Identification Mark</label>
									<form:input path="identificationMark" class="form-control" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<div class="form-group">
										<label for="state">State</label>
										<form:input path="state" class="form-control" />

									</div>

								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="district">District</label>
									<form:input path="district" class="form-control" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<div class="form-group">

										<label for="pincode">PinCode</label>
										<form:input path="pincode" class="form-control" />
									</div>

								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="village">Village/City</label>
									<form:input path="village" class="form-control" />

								</div>
							</div>
						</div>



						<div class="row">
							<div class="col">
								<div class="form-group">
									<div class="form-group">

										<label for="landmark">Landmark</label>
										<form:input path="landmark" class="form-control" />

									</div>

								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="street">Street</label>
									<form:input path="street" class="form-control" />

								</div>
							</div>
						</div>
						<hr />
						<p class="text-info"
							style="font-family: redressed, georgia, garamond, serif;">
							The above data is pre-filled using Learning License Application
							Information.Please only change in case of any updation/changes in your details.</p>
						<hr />
						<div class="row">
							<div class="col">
								<div class="form-group">
									<div class="form-group">
										<label for="appointmentDate">Driving Test Date:</label> <input
											type="date" name="appointmentDate" id="appointmentDate"
											class="form-control" />
									</div>
								</div>
							</div>

							<div class="col">
								<div class="form-group">
									<div class="form-group">
										<div class="form-group">
											<label for="appointmentTime">Test Time</label> <select
												class="form-control" id="appointmentTime"
												name="appointmentTime" required>
												<option value="">Slot</option>
												<option value="09:00">09:00 AM</option>
												<option value="11:00">11:00 AM</option>
												<option value="01:30">01:30 PM</option>
												<option value="03:30">03:30 PM</option>
												<option value="05:00">05:00 PM</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="createdAt">Created At</label> <input type="text"
								class="form-control" id="createdAt">
							<script>
								var today = new Date();
								var date = today.getFullYear() + '-'
										+ (today.getMonth() + 1) + '-'
										+ today.getDate();
								var time = today.getHours() + ":"
										+ today.getMinutes() + ":"
										+ today.getSeconds();
								var dateTime = date + ' ' + time;
								document.getElementById("createdAt").value = dateTime;
							</script>
						</div>

						<button type="submit" class="btn btn-primary mx-auto d-block"
							value="Next">Next</button>
					</form:form>

				</div>
			</div>
		</div>
		<div class="col"></div>

	</div>
	<hr />

	<div class="container-fluid  pt-1 p-1 my-1 bg-dark text-white  ">
		<p
			style="text-align: center; font-family: redressed, georgia, garamond, serif;">©Copyright-2021
			eRTO System</p>
	</div>

</body>
</html>