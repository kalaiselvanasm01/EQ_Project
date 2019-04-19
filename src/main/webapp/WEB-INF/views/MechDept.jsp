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
	width: 17%;
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
	width: -webkit-fill-available; 
	text-align: justify;
	width: 80%;
	line-height: 1.8;
}

#grad1 {
	height: 200px;
	background-image: linear-gradient(to right, rgba(255, 0, 0, 0),
		rgb(240, 101, 101)); Standard syntax (must be last) 
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
	height: 15%;
	font-size: 18px;
	margin-top: 5%;
} */
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
						<h1>MECHANICAL ENGINEERING</h1>

					</section>
				</div>
			</div>
			<div class="col-sm-4 aligns text-img">
				<img src="images/mech-hod-255x255.jpg" alt="MECH_HOD" class="center" />
				<div class="content">
					<h2>Er. M. Thirumal</h2><p>B.Tech., M.Tech.</p>
				
					<p>AP(SG) and Head, Department of Mechanical Engineering.</p>
				</div> 

			</div>
			<div class="col-sm-4 aligns-right">
				<h2 style="font-size: 47px; line-height: 1.6;">
					<strong>&ldquo; Mechanical Engineer Is a Freaking Multi
						Tasking Genius Not a Job Title &rdquo;</strong>
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
			<p>Mechanical engineering is a diverse subject that derives its
				breadth from the need to design and manufacture everything from
				small individual parts and devices (e.g., micro scale sensors and
				inkjet printer nozzles) to large systems (e.g., spacecraft and
				machine tools). The role of a mechanical engineer is to develop a
				product from a provoking idea to the competitive market. The inbuilt
				Qualities of Mechanical Engineers are Creativity for new
				innovations, Listening skill, Math skill, Mechanical skill and
				Problem-solving skill. The faculties of our department teach beyond
				the syllabus.</p>
		</div>
		<div class="col-sm-12 dept-aligns">
			<h4 style="font-size: 30px;">
				<strong>Department Objectives</strong>
			</h4>
		</div>
		<div class="col-sm-12 dept-Cont_aligns">
			<p>To educate the students on designing the modern mechanical
				systems and expose them to industrial practices for better
				employability and adaptability. To instill the values, skills,
				leadership and team spirit for comprehensive and wholesome
				personality, to promote entrepreneurial interest among students and
				to create a fervor for use of Engineering in addressing societal
				concerns.</p>
		</div>
		<div class="col-sm-12 dept-aligns">
			<h4 style="font-size: 30px;">
				<strong>Vission</strong>
			</h4>
		</div>
		<div class="col-sm-12 dept-Cont_aligns">To provide students with
			strong foundation in the mathematical, scientific and engineering
			fundamentals necessary to formulate, analyze and solve engineering
			problems and to prepare them for graduate studies and for successful
			careers in industry.</div>

	</div>
	<div class="footer">

		<p>Building The Future On A Foundation of Excellence.</p>

		</ul>
	</div>
</body>
</html>
