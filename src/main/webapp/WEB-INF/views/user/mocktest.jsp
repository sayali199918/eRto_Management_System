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
<title>Mock Test</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
div#test{ border:#000 1px solid; padding:10px 40px 40px 40px; }
</style>
<style>
img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 80px;
 </style>


<script>
var pos = 0, test, test_status, question, choice, choices, chA, chB, chC, correct = 0;
var questions = [
   
	["What does this sign mean? <br> <img src='${pageContext.request.contextPath}/images/2.png'/><br> " ,"No freeway","No parking","No right turn","B"],
	["Near a pedestrian crossing,when the pedestrian are waiting to cross road, you should?", "Sound horn and proceed", "Slow down ,sound horn and pass", "Stop vehicle and wait till the pedestrian cross the road and then proceed", "C" ],
	["On a road that has been designated as one way ?", "You should not drive in reverse gear","You should not overtake","You should not park","A"],
	["You can overtake a vehicle that is in the front?","Through the left side of the vehicle ahead","Through the right side of the vehicle ahead","If the road is wide enough","B"],
	[ "A learner’s license is valid for a period of ?","30 days","6 months","Until a driving license is availed","B"],
	["What does this sign mean? <br> <img src='${pageContext.request.contextPath}/images/0.png'> <br>","No u-turn","No right turn","No freeway","B"],	
	["The following sign represents:<br> <img src='${pageContext.request.contextPath}/images/1.png'><br>", "No left turn","No freeway","No U-Turn" ,"C"],
	["On a one-way road, you should not : ","Over-speed","Park on the way","Drive in the reverse gear","C"],
	["Overtaking is allowed only:","From the right side","From the left side","After honking 3 times","A"],
	["Vehicles used for transport can be differentiated through","Vehicle’s colour","Vehicle’ number plate","Vehicle’s tyre size","B"],
	
	["The following sign represents: <br> <img src='${pageContext.request.contextPath}/images/3.png'/><br>","Stop","No Parking","Hospital ahead","A"],
	["The following sign represents: <br> <img src='${pageContext.request.contextPath}/images/4.png'/><br> ","Petrol pump","Parking lot - Taxis","Ferry" ,"A"],
	["You are approaching a narrow bridge, another vehicle is about to enter the room from opposite side, you should","Increase the speed and try to cross the bridge as fast as possible","Put on the head light and pass the bridge","Wait till the other vehicle crosses the bridge and then proceed","C"],
	["The following sign represents: <br> <img src='${pageContext.request.contextPath}/images/5.png'/><br>","One way","Give way","Hospital","A"],
	["When a vehicle is involved in an accident causing injury to any person ?","Take the vehicle to the nearest police station and report the accident","Stop the vehicle and report to the police station","Take all reasonable steps to secure medical attention to the injured and report to the nearest police station within 24 hours","C" ],
	["The following sign represents: <br> <img src='${pageContext.request.contextPath}/images/6.png'/><br> ","Request to stop the vehicle from behind","Request to stop the vehicle from front","Request to stop the vehicle from behind and front","A"],
	["The following sign represents: <br> <img src='${pageContext.request.contextPath}/images/7.png'/><br> ","Request to stop the vehicle from behind","Request to stop the vehicle from front","Request to stop the vehicle from behind and front","B"],
	["On a road designated as one way ?","Parking is prohibited","Overtaking is prohibited","Should not drive in reverse gear","C"],
	["The following sign represents:<img src='${pageContext.request.contextPath}/images/8.png'/><br>","Horn prohibited","Sound horn compulsory","Cross road","A"],
	["Overtaking is prohibited ","When the road ahead is not clearly visible","In the night","When the road center is marked with white broken lines","A"],
	
	
	
	
	
	
];
function _(x){
	return document.getElementById(x);
}
function renderQuestion(){
	test = _("test");
	if(pos >= questions.length){
		test.innerHTML = "<h2>You got "+correct+" of "+questions.length+" questions correct</h2>";
		_("test_status").innerHTML = "Test Completed";
		pos = 0;
		correct = 0;
		return false;
	}
	_("test_status").innerHTML = "Question "+(pos+1)+" of "+questions.length;
	question = questions[pos][0];
	chA = questions[pos][1];
	chB = questions[pos][2];
	chC = questions[pos][3];
	test.innerHTML = "<h3>"+question+"</h3>";
	test.innerHTML += "<input type='radio' name='choices' value='A'> "+chA+"<br>";
	test.innerHTML += "<input type='radio' name='choices' value='B'> "+chB+"<br>";
	test.innerHTML += "<input type='radio' name='choices' value='C'> "+chC+"<br><br>";
	test.innerHTML += "<button onclick='checkAnswer()'>Submit Answer</button>";
}
function checkAnswer(){
	choices = document.getElementsByName("choices");
	for(var i=0; i<choices.length; i++){
		if(choices[i].checked){
			choice = choices[i].value;
		}
	}
	if(choice == questions[pos][4]){
		correct++;
	}
	pos++;
	renderQuestion();
}
window.addEventListener("load", renderQuestion, false);
</script>
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
      <a class="nav-link active" href="<spring:url value='/user/mocktest'/>">Mock Test </a>
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
<br>

<div class="container">
    <div class="row">
        <div class="col-md-12">
<div class="card">
  <div class="card-header"><h4 id="test_status"></h4></div>
  <div class="card-body">
<div id="test"></div>
</div>
</div>
</div>
</div>
</div>

<hr />


</body>
</html>