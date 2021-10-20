<%@page isELIgnored="false" %>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
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
</head>
<body>


 <div class ="container-fluid pt-3 p-1 my-3 bg-success text-white">

<h1 style="text-align:center;font-family:redressed,georgia,garamond,serif;">eRTO System</h1>
<p style="text-align:center; font-family:redressed,georgia,garamond,serif;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

<hr/>
<div class="container" align="center">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <h2>${requestScope.message}</h2>
                <h2></h2><br>
                <div class="error-details">
                    Sorry, an error has occurred, Requested page not found!
                </div>
                <br>
                <div class="error-actions">
                    <a href="<spring:url value='/user/page'/>" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-home"></span>
                        Take Me Home </a>&nbsp;&nbsp;&nbsp;
                        <a href="#" data-toggle="popover" data-placement="bottom" title="Please follow below Instruction to contact support" data-content="Logout from your account and click on contact us button you will see to contact support. " class="btn btn-outline-info btn-sm"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>&nbsp;&nbsp;&nbsp;
                        <a href="<spring:url value='/user/logout'/>" class="btn btn-secondary btn-sm"><span class="glyphicon glyphicon-log-out"></span>LogOut</a>&nbsp;&nbsp;&nbsp;
                </div>
                 <script>
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();
});
</script>
            </div>
        </div>
    </div>

</div>

<hr />


</body>
</html>