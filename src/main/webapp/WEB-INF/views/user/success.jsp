<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>Success</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "icon" href ="${pageContext.request.contextPath}/images/rto icon.png" 
        type = "image/x-icon">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<div class ="container-fluid pt-3 p-1 my-3  bg-success text-white">

<h2 style="text-align:center;font-family:redressed,georgia,garamond,serif;">eRTO System</h2>
<p style="text-align:center; font-family:redressed,georgia,garamond,serif;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

<hr/>
<div class="container" align="center">
    <div class="row">
        <div class="col-md-12">
            <div>
                <h3>Your Form Is Submitted!</h3>
                <h5>Mail regarding test credentials will reach you in sometime!</h5>
                <br>
                 <a href="<spring:url value='/user/status'/>" 
                 class="btn btn-success btn-lg"> Check Your Status </a>
                <div class="error-actions">
                <br>
                   <a href="<spring:url value='/user/page'/>" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-home"></span> Home </a>&nbsp;&nbsp;&nbsp;
                        <a href="<spring:url value='/user/logout'/>" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-log-out"></span> LogOut</a>&nbsp;&nbsp;&nbsp;
                </div>
                 
            </div>
        </div>
    </div>
</div>
</body>
</html>

