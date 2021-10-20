<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Upload Documents</title>
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

<div class ="container-fluid p-1 my-3 bg-success text-white">
<h1 style="text-align:center;">eRTO System</h1>
<p style="text-align:center;">Welcome to the eRTO System.The place where transparency is the main moto.</p>
</div>

<div class="row">
  <div class="col"></div>
  
  <div class="col">

  <div class="card " style="width:600px ; height:650px">
<div class="card-header text-body" style="text-align:center;font-family:redressed,georgia,garamond,serif;"><h4>Upload Your Documents</h4></div>
<div class="card-body">
	<form action="upload-files" method="post" enctype="multipart/form-data">
	
	
	<h5 align="center" style="color: blue; font-family: font-family:redressed,georgia,garamond,serif;">${sessionScope.uploadId}</h5>
	<h5 style=" font-family:redressed,georgia,garamond,serif;" class="text-body">Please follow the following instructions carefully, else it will lead to discarding of your application form.</h5>
	<h6 style=" font-family:redressed,georgia,garamond,serif;" class="text-body">Documents must be images in png/jpeg format.</h6>
	<h6 style=" font-family:redressed,georgia,garamond,serif;" class="text-body">Citizen must rename the images by his Applicant ID, as sent in the mail.</h6>
	<hr />
  <div class="form-group text-body">
    <h5 style="font-family:redressed,georgia,garamond,serif;"><label for="aadharImage" >Upload Aadhar Card Image:</label></h5>
    <input type="file" name="aadharImage" class="form-control-file" id="aadharImage" accept="image/png,image/jpeg" required="required">
  </div>
  <hr />
   <div class="form-group text-body">
   <h5 style="font-family:redressed,georgia,garamond,serif;"> <label for="passportImage">Upload Passport Size Photo:</label></h5>
    <input type="file" name="passportImage" class="form-control-file" id="passportImage" accept="image/png,image/jpeg" required="required">
  </div>
 <hr />
   <div class="form-group text-body">
    <h5 style="font-family:redressed,georgia,garamond,serif;"><label for="signature">Upload Signature(Scanned):</label></h5>
    <input type="file" name="signature" class="form-control-file" id="signature" accept="image/png, image/jpeg" required="required">
  </div>
  <hr />
  <br>
  <button class="btn btn-outline-success">Upload Documents and Submit</button>
</form>
</div>
</div>
</div>
<div class="col"></div>
</div>
<hr />
</body>
</html>