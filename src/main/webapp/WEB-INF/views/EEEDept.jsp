<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home</title>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath}" />
<link rel="stylesheet"
	href="<c:url value="${contextPath}/styles/jquery-ui.min.css" />" />
<link href="<c:url value="${contextPath}/styles/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="${contextPath}/styles/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<c:url value="${contextPath}/styles/EQstyle.css" />" />
<script
	src="<c:url value="${contextPath}/scripts/jquery-3.1.1.min.js" />"></script>
<script src="<c:url value="${contextPath}/scripts/jquery-ui.min.js" />"></script>
<script src="<c:url value="${contextPath}/scripts/bootstrap.min.js" />"
	type="text/javascript"></script>

<style>
 /*
.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 70%;
}

.aligns {
	margin-top: 2%;
	width: 50%;
}

.aligns-right {
	margin-top: 8%;
	letter-spacing: 3px;
	text-align: justify;
	fonr-size: 40px !important;
	word-spacing: 10px;
	text-shadow: 3px 2px #f5f5f5;
	text-transform: capitalize;
	width: 47%;
	font-style: italic;
}

.dept-aligns {
	width: 20%;
	word-spacing: 10px;
	margin-left: 7%;
	margin-top: 4%;
}

.dept-Cont_aligns {
	margin-top: 2%;
	word-spacing: 10px;
	margin-left: 7%;
	text-transform: capitalize;
	font-size: 20px;
	
	text-align: justify;
	width: 80%;
	line-height: 1.8;
}

#grad1 {
	height: 200px;
	background-image: linear-gradient(to right, rgba(255, 0, 0, 0),
		rgb(240, 101, 101));
}

.header {
	overflow: hidden;
	background-color: #832424;
	padding: 20px 10px;
	COLOR: yellow;
	letter-spacing: 3px;
}

.footer {
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #832424;
	color: yellow;
	text-align: center;
	font-size: 18px;
	margin-top: 5%;
}  */
</style>

</head>
<body id="grad1">
	<jsp:include page="menu.jsp"><jsp:param
			name="displayPage" value="homePage" /></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="header">
					<!-- <a href="#default" class="logo">CompanyLogo</a>
					<div class="header-right">
						<a class="active" href="#home">Home</a> <a href="#contact">Contact</a>
						<a href="#about">About</a>
					</div> -->
					<section>
						<h1>ELECTRICAL AND ELECTRONICS AND ENGINEERING</h1>

					</section>
				</div>
			</div>
			<div class="col-sm-4 aligns text-img">
				<img src="images/eee-hod-255x255.jpg" alt="EEE_HOD" class="center" />
				<div class="content">
					
					<h2>Er.F.D.Anfinston </h2> <p>B.E.,M.E.,MISTE</p>
					
					<p>Assistant professor and Head,Department of EEE.</p>
				</div>
			</div>

			<div class="col-sm-4 aligns-right">
				<h2 style="font-size: 47px; line-height: 1.6;">
					<strong>&ldquo; The Only Real Power Comes Out Of Long
						Rifle &rdquo;</strong>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 dept-aligns">
				<h4 style="font-size: 30px;">
					<strong>About The Department</strong>
				</h4>
			</div>
		</div>
		<div class="col-sm-12 dept-Cont_aligns">
			<p>&ldquo; The department was established during the inspection of
				the institution in 2010. Since its commencement, the primary
				objective of the department has been to impart Quality education in
				the field of Electrical and Electronics Engineering. &rdquo;</p>

			<p>The department has well qualified and dedicated team of
				teaching staff members. Quality technical education is provided to
				the students in the core areas of the field to meet the challenge of
				energy demand. Teaching and learning process was strengthened by
				regular feedback both oral and written from the students.</p>
		</div>
		<div class="col-sm-12 dept-aligns">
			<h4 style="font-size: 30px;">
				<strong>VISION OF EEE-ACET:</strong>
			</h4>
		</div>
		<div class="col-sm-12 dept-Cont_aligns">Enriching students mind
			with quality Education and students centric learning environment,
			prepare our students to be socially Empowered engineers for taking up
			Excellence in technology leadership.</div>

		<div class="col-sm-12 dept-aligns">
			<h4 style="font-size: 30px;">
				<strong>MISSION OF EEE-ACET:</strong>
			</h4>
		</div>


		<div class="col-sm-12 dept-Cont_aligns">
			<ul>
				<li>TTo make our graduates experts in practical problem solving
					with abstract thinking skills.</li>
				<li>To make our students life-long learners capable of building
					their careers upon a solid foundation of knowledge.</li>
				<li>Integrated with opportunities for teamwork, leadership,
					values, ethics and social activities.</li>

			</ul>

		</div>


	</div>
	<div class="footer">

		<p>Building The Future On A Foundation of Excellence.</p>

		</ul>
	</div>
</body>
</html>
