<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--import spring suppiled JSP tag lib for URL rewriting --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon"
	href="${pageContext.request.contextPath}/images/rto icon.png"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
	background-color: transparent;
	width: 200px;
	height: 250px;
	perspective: 1000px;
}

.flip-card-inner {
	position: relative;
	width: 100%;
	height: 100%;
	text-align: center;
	transition: transform 0.6s;
	transform-style: preserve-3d;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.flip-card:hover .flip-card-inner {
	transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
}

.flip-card-front {
	background-color: #bbb;
	color: black;
}

.flip-card-back {
	background-color: black;
	color: white;
	transform: rotateY(180deg);
}
</style>

</head>
<body>

	<div class="container-fluid pt-3 p-1 my-3  bg-success text-white">

		<h1
			style="text-align: center; font-family: redressed, georgia, garamond, serif;">eRTO
			System</h1>
		<p
			style="text-align: center; font-family: redressed, georgia, garamond, serif;">Welcome
			to the eRTO System.The place where transparency is the main moto.</p>
	</div>


	<nav class="navbar navbar-expand-sm sticky-top bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link "
				href="<spring:url value='/'/>">Home</a></li>

			<li class="nav-item "><a class="nav-link" href="#faq">FAQ</a></li>
			<li class="nav-item "><a class="nav-link" href="#aboutus">About Us</a></li>
			<li class="nav-item"><a class="nav-link " href="#contactus">Contact
					Us</a></li>
		</ul>

		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="<spring:url value='/user/login'/>">
					<button type="button" class="btn btn-outline-light my-2 my-sm-0">Login</button>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<spring:url value='/user/register'/>">
					<button type="button" class="btn btn-outline-light my-2 my-sm-0">Register</button>
			</a></li>

		</ul>
	</nav>
	<br>



	<div id="id" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#id" data-slide-to="0" class="active"></li>
			<li data-target="#id" data-slide-to="1"></li>
			<li data-target="#id" data-slide-to="2"></li>
			<li data-target="#id" data-slide-to="3"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner rounded">
			<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/images/rto04.jpg"
					alt="Signs" width="100%" height="500">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/images/rto02.png"
					alt="Makelicense" width="100%" height="500">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/images/rto03.png"
					alt="signal" width="100%" height="500">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/images/rto01.jpg"
					alt="roads" width="100%" height="500">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#id" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#id" data-slide="next"> <span
			class="carousel-control-next-icon"></span>
		</a>
	</div>
	<br>

	<div class="container-fluid p-3 my-3 ">
		<div class="card-columns">

			<div class="card" style="width: 490px; height: 300px">
				<div class="card-header">Services</div>
				<div class="card-body">
					<ul>
						<li>Learning License & Permanent License : Provides<br>
							application form and other details regarding same.</li>
						<li>Work In Progress : Giving the demo test and getting the
							notification from system.</li>
						<li>The main moto is to bring transparency in all the related
							operations.</li>
					</ul>
				</div>
			</div>


			<div class="card" style="width: 490px; height: 300px">
				<div class="card-header">Information/Notification</div>
				<div class="card-body">
					<marquee width="400px" direction="up" height="200px">
						<ul>
							<li>As of 1st October-2020, Indians need to follow an
								altered set of rules, which changes the guidelines set forth in
								the Central Motor Vehicles Rules 1989.</li>
							<li>carrying these documents increased the chances of
								misplacing them. With digital storage facilities, drivers can
								now leave the original documents safely at home.</li>
							<li>important change in the rules is the legalization of
								using mobile phones for navigation while driving. Most drivers
								today rely on their phone’s map application for real-time GPS
								location tracking.</li>
						</ul>
					</marquee>
				</div>
			</div>

			<div class="card" style="width: 490px; height: 300px">
				<div class="card-header">Queries</div>
				<div class="card-body">
					<ul>
						<li>Know Documents Required.</li>
						<li>Update about Terms & Condition.</li>
						<li>State Transport Department 24x7 help line.</li>
					</ul>
					
					<h6 class="text-dark">Note:</h6>
					<p>
					The Queries section is based on frequently asked questions by user.
					Click on the links of respective queries to know more about it and
					if the issue still persist kindly contact using contact us option.
					</p>
				</div>
			</div>


		</div>
	</div>


	<hr />
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-header"
					style="text-align: center; font-family: redressed, georgia, garamond, serif;">
					<h5>News</h5>
				</div>
				<div class="card-body bg-light">

					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h2 class="clearfix mb-0">
												<a class="btn btn-link" data-toggle="collapse"
													data-target="#collapseOne" aria-expanded="true"
													aria-controls="collapseOne"> <i
													class="fa fa-chevron-circle-down"></i> RTO to soon
													introduce grading system for driving schools.
												</a>
											</h2>
										</div>
										<div id="collapseOne" class="collapse"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">

												<p>PUNE: The regional transport office (RTO) will soon
													grade driving schools in pune and pimpri chinchwad
													municipal limits based on a survey of the quality of
													services they offer.</p>
												<p>Senior RTO officials told TOI that the
													checking-cum-grading will help in ascertaining centres
													operating legally and illegally and enable driving centres
													to improve their services.</p>
												<p>"There will be three grades- A, B, C, where A stands
													for very good, B stands for good and C stands for
													satisfactory. Centres, which receive grade below C will not
													be allowed to function."Pune's deputy RTO sanjay sasane
													said.</p>
												<p>Both the Pune and pimpri chinchwad limits have around
													200 driving schools registered with the RTOs. However,
													driving school sources said that there were around 200 more
													schools, which either had no proper infrastructure or
													existed just on paper. The transport department has
													provided us with parameters, which will be used to grade
													driving centres. These parameters include the number of
													cars a centre has, condition of the cars, kind of
													theretical training it imparts, do they have facilities
													like simulators, test track, classrooms, whether students
													are given lessons on basics vehicle maintenence, among
													others. While the RTO will not provide any special perks to
													the centres in A grade, they can advertise themselves with
													the certificate they get from the RTO, another RTO officil
													pointed out.</p>
												<p>Recently, driving schools had opposed a road
													transport ministry proposal allowing license seekers, who
													have passed out of an 'accredited' driving school. not
													having to appear for test for driving license. The issue of
													accredited driving schools had come up, but the
													requirements are so costly that it cannot be afforded by
													the majority. The RTO should try to identify driving
													schools operating illegally, the proprietor of a driving
													centre said. The road transport ministry had proposed last
													month that driving schools across the country will be
													provided with accreditation if they enhanced their
													facikities. These included setting up of test tracks over
													one acre of land, having latest equipment and simulators
													for the students etc. The ministry has opened the proposal
													for a public consultation for now.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseTwo" aria-expanded="false"
													aria-controls="collapseTwo"> <i
													class="fa fa-chevron-circle-down"></i> Pune: Re-register
													vehicles aged over 15, says RTO
												</a>
											</h2>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<br>PUNE: The Regional Transport Office has sent
													notices to owners of 15-year-old vehicles to get then
													re-registerd and pay the green tax without delay. The The
													Regional Transport Office(RTO), Pune, has little
													information about the number of such vehicles in its
													jurisdiction. The officials stated that a drive would start
													against such vehicles. "Those having such vehicles should
													immediatley check the documents and find out it the green
													tax has been paid. If not, it should be paid immediately
													and the vehicles should be re-registered", an RTO official
													said.
												</p>

												<p>"Vehicles would be checked on roads during the drive.
													If an old vehicle is found running without being
													re-registered or the green tax paid, it would br
													confiscated", the official said. The Union government
													recently announced a scrapping policy for old vehicles.
													More than 16 lakh vehicles could be scrapped in
													Maharashtra, the state transport department said. State
													transport commissioner Avinash Dhakne said while the
													transport department would be the single stop for the
													process, the respective RTOs would do the re-registering
													once anyone approached with an old vehicle. The RTO
													official said, "It is difficult to give a definite number
													of vehicles plying without re-registration. We shall have
													some idea after the drive starts," the official said.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseThree" aria-expanded="false"
													aria-controls="collapseThree"> <i
													class="fa fa-chevron-circle-down"></i> Aadhaar link will
													ease RTO rush
												</a>
											</h2>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>MUMBAI: The decision by the Union government to link
													adhaar cards with driving license and registration
													certificates (RC) of vehicles will bring down the number of
													visitors to various RTOs and also free them of
													agents/touts.A senior transport official said that there
													was a draft notification from centre on linking the driving
													license and RC with adhar card. "If the adhar number of an
													applicant is linked with the license, the details will be
													uploaded on our sarathi portal.</p>
												<p>Similarly, for a new vehicle registration, the adhar
													details will be saved on the vahan portal. If the adhaar
													linkage is done, it will eliminate the need for visiting
													RTOs and for submitting documents. You can renew your
													license or make any other application from home," the
													officer said. Currently, people have to come to RTO offices
													and many end up paying a lot of money to agents/touts to
													get the work done. "The new system will not only kepp touts
													at bay, but will eliminate cases of forgery/making
													duplicate driving license." the officer said. Sources said
													that the RTOs expect a drop in visitors by 75% once the
													adhaar is linked to driving license and RC of vehicles.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingFour">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseFour" aria-expanded="false"
													aria-controls="collapseFour"> <i
													class="fa fa-chevron-circle-down"></i> Nashik RTO gets ISO
													certification
												</a>
											</h2>
										</div>
										<div id="collapseFour" class="collapse"
											aria-labelledby="headingFour" data-parent="#accordionExample">
											<div class="card-body">
												<p>Nashik: the Nashik Regional Transport Office(RTO) has
													been awarded the ISO 9001-2015 certification given by
													Quality Veritas Certification Limited (UK). This comes
													after finding that Nashik RTO is meeting the requirements
													of ISO 9001:2015 qulaity managemnet system for providing
													services of driving licnses, vehicle registration, fitness
													certification and enforcement of Motor Vehicle Act for road
													safety and revenue recovery. Bharat kalaskar, the regional
													transport officer, Nashik, said, "Nashik RTO is a 100%
													digitized office, which has over 40 lakh records of license
													and vehicle registrations. It gives about 60 time-bound
													services of licenses and vehicles with online
													appointments." He said Nashik RTO also has the state's
													first automated inspection and certification centre to
													check vehicle fitness.The office also conducts regular
													online training along with counselling courses for new
													learner's license holders, especially the youth in
													association with Nashik First NGO with an achieve road
													safety. "Nashik RTO would continue to improve its services
													even in the future," he said.</p>
												<p>As per the release by the Nashik RTO, the office had
													begun computerized offline vehicle registration and license
													in 1997. The initial offline computerized work was done
													through tools software. In 2007, the RTO switched to
													sarathi 1.0 and vahan 1.0 web-based system for driving
													license and vehicle registrations, respectively. The RTO
													switched to online sarathi 4.0 and vahan 4.0 online system
													in january 2017. Records of over one lakh driving licenses
													and 18.74 lakh vehicles have been computerized so far.
													Nashik RTO gives 150 appointments daily for the learners
													license test, 200 for driving license test and 165 vehicles
													for renewing fitness certificates of vehicles. The RTO also
													provides online services of issuing learners license,
													driving license, renewal of license, the inclusion of new
													address in driving license among others.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingFive">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseFive" aria-expanded="false"
													aria-controls="collapseFive"> <i
													class="fa fa-chevron-circle-down"></i> RTO conducts
													surprise check of pvt buses
												</a>
											</h2>
										</div>
										<div id="collapseFive" class="collapse"
											aria-labelledby="headingFive" data-parent="#accordionExample">
											<div class="card-body">
												<p>Nashik: Senior officials and inspectors of the
													Regional Transport Office(RTO), Nashik, conducted a
													surprise checking of the private transport buses across the
													district to ensure they are not violating permit
													conditions.A team of nearly 20 officials and inspectors,
													including regional transport officers bharat kalaskar and
													deputy RTO vinay ahire,inspected the private buses on
													Mumbai-Agra highway at dwarka, ghoti toll plaza, Pune
													highway at sinnar, yeola, Borgaon check-post among other
													locations. Drivers and owners of 54 buses were booked
													during the surprise drive.</p>
												<p>
													<br>Ahire said last year, the revenue collection of
													the RTO had been affected due to the restrictions effected
													on the movemnet of vehicles on account of the covid-19
													outbreak. "Now that things are improving and even the
													movement of vehicles is like during pre-covid times, the
													nashik RTO has decided to focus on increasing its revenue
													by slapping a fine on private bus operators if they are
													found operating without the necessary permission or
													violating traffic rules," said ahire.
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingSix">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseSix" aria-expanded="false"
													aria-controls="collapseSix"> <i
													class="fa fa-chevron-circle-down"></i> Pune: Helmets now
													mandatory to visit RTO
												</a>
											</h2>
										</div>
										<div id="collapseSix" class="collapse"
											aria-labelledby="headingSix" data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<br>Pune: Two-wheeler riders would have to wear
													helmets for entering the city's regional transport
													office(RTO), else they would be penalized. Senior officials
													of the RTO stated on wednesday that one of their inspectors
													would be conducting checks. A fine of Rs500 would be levied
													on rule violators.
												</p>
												<p>"A large number of people visit the RTO office for
													work. They need to wear helmets if they are riding a
													two-wheeler," deputy regional officer sanjay sasane told
													TOI. Sanjiv bhor, another senior official with the RTO
													said, "The action has already begun. E-challans will be
													issued to violators and they will have to pay the penalty
													online."</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingSeven">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseSeven" aria-expanded="false"
													aria-controls="collapseSeven"> <i
													class="fa fa-chevron-circle-down"></i> E-vehicle
													registrations soar in Pune, Pimpri Chinchwad..
												</a>
											</h2>
										</div>
										<div id="collapseSeven" class="collapse"
											aria-labelledby="headingSeven"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>Ghaziabad: A token system has been lauched at the
													regional transport office for residents who want to update
													their vehicle-related records. Now, those who want to get
													duplicate copy of registration books and no objection
													certificates or update their addresses will have to apply
													on the state's transport department website. They can fill
													up online forms from their homes or the nearest public
													service centre and once the required fee is submitted, an
													applicant would be given a slot. The state transport
													officers will address the matter on the specified slot and
													complete the work in presence of the applicant. For the
													convinience of applicants, three slots have been fixed-
													10am to noon, 12.30pm to 2.30pm and 3.30pm to 5pm.</p>
												Officials said that during a video conference held on
												november 6, the district magistrates were asked to conduct
												inspections of transport offices. Subsequently on saturday,
												Ghaziabad district magistrate ajay shankar pandey conducted
												an inspection and reviewed all online services that are
												being provided to applicants. Pandey asked officials to set
												up a separate room for those who violate traffic rules. In
												that room, a short flim on road safety would be shown to the
												offenders. "It will be mandatory for people to see the
												video. For this, instructions have been given to the
												assistant regional transport officers," he added.
												<p>Due to lack of information about the online system,
													the transport office sees a crowd almost everyday from the
													time it opens at 10am. Officials have been asked to
													launched an awareness campaign to make people aware of the
													system so that most people can apply online and visit the
													office only on the specified slot. After spotting
													encroachments outside the transport office during the
													inspection, pandey instructed officials to ensure that the
													place is cleared within three days. He said, after that,
													surprise checks would be conducted from time to time.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingEight">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapseEight" aria-expanded="false"
													aria-controls="collapseEight"> <i
													class="fa fa-chevron-circle-down"></i> Delhi:Transport
													services set to go online
												</a>
											</h2>
										</div>
										<div id="collapseEight" class="collapse"
											aria-labelledby="headingEight"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>New Delhi: If you need to renew your driving
													license(DL) or get a duplicate one, get hypothecation of
													vehicle cancelled, transfer registration certificate (RC)
													or get an international driving permit, you will be able to
													do it from the comfort of your home, in all probability by
													next week. Delhi government has prepared a roadmap for
													revamp of its transport-related services, which as the
													government terms it, would become 'faceless' without any
													requirement the applicant's presence at the RTO. The
													government's transport department is starting ith 12 of its
													most 'sought-after' services and will gradually add most of
													its 70 services, including handling over RC of new vehicles
													at the vehicle dealership itself, Delhi's transport
													minister kailash gahlot told TOI. Delhi government is
													coming out with a major reform package under the leadership
													of chief minister arvind kejriwal, which would see almost
													all services of the transport department being made
													available to delhites in a 'faceless' manner from the
													comfort of their home, transport minister said.</p>
												<p>"Most of the services of the department are already
													available online but the reforms we are bringing in would
													see its final version, which would be completely faceless
													as you wouldn't have to come to RTO at all," the minister
													said. Gahlot said that he has directed the department to
													carry out intensive trials before the reforms are
													implemented so that there are no teething and people don't
													face any problem at all. "It is a good work that is being
													done and it should not be done in any haste," he said.</p>
												<p>Ashish kundra, principal
													secretary-cum-commissioner(transport), said that issuance
													of driving license, registration, permit, etc, are the
													cutting edge services of the department with a direct
													public interface. "The idea is to gradually switch over
													completely online in not only application but also
													processing and despatch of documents, and people should not
													be asked to come to the centre to get things processed," he
													said. Kundra said that the reform includes reorientation of
													people and some re-engineering of the system. "Once we have
													made sure our people and systems are ready, we will start
													with some pilot testing and then launched it. Technology is
													one part of the matrix and the other part is people who are
													actually dealing with these things," he said. KK Dahiya,
													special commissioner (transport) said that intensive trials
													and testing is going on to implement the reforms. "The
													second phase will include services related to commercial
													vehicles like permits, transfer, renewal, etc. By april, 58
													more services are targeted to be made available online, "
													Dahiya said.</p>
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



		<div class="col">
			<div class="card" id="faq">
				<div class="card-header"
					style="text-align: center; font-family: redressed, georgia, garamond, serif;">
					<h5>FAQ</h5>
				</div>
				<div class="card-body bg-light">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">

								<div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h2 class="clearfix mb-0">
												<a class="btn btn-link" data-toggle="collapse"
													data-target="#collapsefaq1" aria-expanded="true"
													aria-controls="collapseOne"> <i
													class="fa fa-chevron-circle-down"></i> Application for No
													Objection Certificate
												</a>
											</h2>
										</div>
										<div id="collapsefaq1" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<b>If customer apply for NOC then he is not able to
														take any other online service.</b><br> Till NOC
													application is approved the user would not be able to apply
													any service.Once NOC application is approved from the RTO
													then the user can apply for any service.
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapsefaq2" aria-expanded="false"
													aria-controls="collapseTwo"> <i
													class="fa fa-chevron-circle-down"></i> Duplicate
													Registration Certificate
												</a>
											</h2>
										</div>
										<div id="collapsefaq2" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<b>For how much time duration Motor Vehicle tax is paid
														and when?</b><br> Tax depends upon the type of vehicle-o
													• For Non Transport vehicle-Motor vehicle tax is takenat
													one time life time(15 years). After 15 years tax can be
													paid during renewal of registration for 5 years period. In
													most of the state MV Tax for Non transport
												</p>
												<p>
													<b>I’m trying to pay Motor Vehicle tax but after
														payment I am getting an error message, " This transaction
														is failed please initiate new transaction”.</b><br> If
													the amount is debited from customer’s bank account, he/she
													should wait as reconciliation could be pending from bank
													side. Customer should keep checking hi transaction status
													through “Check pending transaction” (as defined elsewhere
													in this FAQ).
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapsefaq3" aria-expanded="false"
													aria-controls="collapsefaq3"> <i
													class="fa fa-chevron-circle-down"></i> Pay Your Tax
												</a>
											</h2>
										</div>
										<div id="collapsefaq3" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<b>What are the other tax components?</b><br> Other
													Tax components recovered from vehicle owner are additional
													MV tax, environment tax, green tax, cess, road safety tax,
													Municipality Tax etc. These taxes may vary from state to
													state.
												</p>
												<p>
													<b>Do I need to pay tax when I’m is not using my
														commercial vehicle on road?</b><br> If the Transport
													vehicle is not on Road / Not in Use, then Vehicle owner can
													apply for Tax Exemption of non use period through concerned
													Transport department, process varies from state to state.
												</p>
												<p>
													<b>Why Motor Vehicle taxis different in different
														state?</b><br> Motor Vehicle tax is imposed by states,
													each state have their state motor vehicle act, and
													according to that tax calculation is performed.
												</p>
												<p>
													<b>What is additional MV tax? Is it implied on all
														category of vehicle?</b><br> Additional MV tax is implied
													over the MV tax of vehicle when certain parameters limits
													exceed like unladen weight of vehicle exceed 50000 etc.
												</p>
												<p>
													<b>Can user pay Motor Vehicle Tax online and where?</b><br>
													Yes, Motor Vehicle Tax can be paid from portal
													parivahan.gov.in or from State transport portal.
												</p>
												<p>
													<b>What forms are required while paying tax online?</b><br>
													There is no need of any form for paying tax online.
												</p>
												<p>
													<b>Why am I getting following alert message after
														entering vehicle registration number “Alert! This service
														has not been activated for the concern State/RTO.”?</b> Online
													tax payment facility is only available at selected State /
													RTO, as permitted by State Transport Department. Only a few
													States and its online RTO are covered under facility.
												</p>
												<p>
													<b>Which mobile number do I have to use to avail online
														Motor vehicle tax payment option?</b> Citizen can avail this
													facility by entering any mobile number, he/she will get OTP
													for confirmation of mobile number. After confirmation
													he/she can proceed further for payment process.
												</p>
												<p>
													<b>Why am I getting “No record found” for my vehicle?</b><br>
													Currently all states / RTOs are not covered under this
													facility, also some of the record may not have been
													migrated to online portal.
												</p>
												<p>
													<b>I’m trying to pay Motor Vehicle tax online but
														transaction is showing pending.</b><br> This is because
													previous transaction of same vehicle must be pending, new
													transaction is not possible without complete settlement of
													previous pending transaction. Customer can check current
													status of transaction by going to “Check Pending
													Transaction”
												</p>
												<p>
													<b>I’m trying to pay Motor Vehicle tax but getting
														message “Alert!!! Vehicle is blacklisted ".</b><br> If
													the vehicle is blacklisted then customer cannot avail any
													Vahan services like Tax for that vehicle. To pay the road
													tax customer has to remove their vehicle from blacklist by
													contacting respective departments and then proceed with
													Vahan services.
												</p>
												<p>
													<b>I’m trying to pay Motor Vehicle tax but when I click
														on payment option nothing happens, a blank page is
														displayed.</b><br> Customer can retry for the payment
													after sometime and if the problem continues, he/she can
													contact Vahan Helpdesk for issue reporting. (Only for
													Jharkhand) I paid Motor Vehicle Tax, amount debited,
													receipt not generated. When I checked pending transaction,
													I cannot find option for refund? Refund option is only
													available for same day of the payment (till 12 PM).
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingFour">
											<h2 class="mb-0">
												<a class="btn btn-link collapsed" data-toggle="collapse"
													data-target="#collapsefaq4" aria-expanded="false"
													aria-controls="collapseFour"> <i
													class="fa fa-chevron-circle-down"></i> Transfer of
													Ownership
												</a>
											</h2>
										</div>
										<div id="collapsefaq4" class="collapse"
											aria-labelledby="headingFour" data-parent="#accordionExample">
											<div class="card-body">
												<p>
													<b>What is Motor Vehicle Tax and how it is decided?</b><br>
													In India, MotorVehicle tax is imposed by state governments.
													The motor vehicle tax is calculated on the basis of various
													factors including engine capacity, seating capacity,
													unladen weight, laden weight and cost price of vehicle.
												</p>
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
	<hr />

	<div align="center" id="aboutus"><br>
		<h1 class="text-dark" style="font-family: Lucida Handwriting">Our Team</h1>
	</div>
	<br>
	<div class="container">


		<div align="center">
			<div class="col" style="max-width: 50%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/bhagyashree.jpeg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h2 sty>Bhagyashree Zambre</h2><br>
							<h4>Project Guide</h4>
							
						</div>
					</div>
				</div>
			</div>
		</div><br>



		<div class="row">

			<div class="col" style="max-width: 20%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/sayali.jpg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h1>Sayali Badgujar</h1><br>
							<p>Backend Developer</p>
							<p>CDAC Mumbai</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col" style="max-width: 20%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/nikhil.jpg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h1>Nikhil Sarode</h1><br>
							<p>Backend Developer</p>
							<p>CDAC Mumbai</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col" style="max-width: 20%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/ritesh.jpg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h1>Ritesh Borole</h1><br>
							<p>Frontend Developer</p>
							<p>CDAC Mumbai</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col" style="max-width: 20%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/deepali.jpg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h1>Deepali Dongare</h1><br>
							<p>Frontend Developer</p>
							<p>CDAC Mumbai</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col" style="max-width: 20%;">
				<div class="flip-card">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="${pageContext.request.contextPath}/images/team/pavan.jpg"
								alt="Avatar" style="width: 200px; height: 250px;">
						</div>
						<div class="flip-card-back"><br>
							<h1>Pavan Peddawad</h1><br>
							<p>Frontend Developer</p>
							<p>CDAC Mumbai</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<br>
	<hr>
	<br>



	<div class="container" id="contactus">
		<div class="row">
			<div class="col"></div>

			<div class="col">
				<div class="location"
					style="text-align: center; font-family: redressed, georgia, garamond, serif;">
					<h4>
						<img src="${pageContext.request.contextPath}/images/Reachtous.png"
							alt="Image">
					</h4>
					<h3 style="font-family: redressed, georgia, garamond, serif;">Reach
						Us</h3>
					<p>
						Raintree Marg, <br>opp. Kharghar station, Sector 7, <br>Kharghar,
						Navi Mumbai, <br> Maharashtra 410210
					</p>
				</div>
			</div>

			<div class="col">
				<div class="phone"
					style="text-align: center; font-family: redressed, georgia, garamond, serif;">
					<h4>
						<img src="${pageContext.request.contextPath}/images/contactus.jpg"
							alt="Image">
					</h4>
					<h3 style="font-family: redressed, georgia, garamond, serif;">Contact
						Us:</h3>
					<a href="tel:+917745090545">1234567891</a><br> <a
						href="mailto:rtoprojectedac2021@gmail.com">rtoprojectedac2021@gmail.com</a>
				</div>
			</div>

			<div class="col"></div>
		</div>
	</div>
	<hr />

	<div class="container-fluid  pt-1 p-1 my-1 bg-dark text-dark  ">
		<p
			style="text-align: center; font-family: redressed, georgia, garamond, serif;">©Copyright-2021
			eRTO System</p>
	</div>


</body>
</html>


