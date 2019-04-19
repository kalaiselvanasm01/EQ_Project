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
	margin-left: 6%;
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
						<h1>ELECTRONICS AND COMMUNICATION ENGINEERING</h1>

					</section>
				</div>
			</div>
			<div class="col-sm-4 aligns text-img">
				<img src="images/ece-hod-255x255.jpg" alt="ECE_HOD" class="center" />
				<div class="content">
				<h2>Dr.K.Thirumalaivasan </h2><p>B.Tech.,M.E.,Ph.D.,</p>

					<p>Associate Professor and Head, Department of ECE</p>
				</div>
			</div>
			<div class="col-sm-4 aligns-right">
				<h2 style="font-size: 47px; line-height: 1.6;">
					<strong>&ldquo; The Greatest Myth Of Our Times Is That
						Technology Of Communication &rdquo;</strong>
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
			<p>The Department of Electronics and Communication Engineering
				was established in 2010 at the time of inception of the college,
				Achariya College Engineering Technology affiliated to Pondicherry
				Central University and Certified by ISO 9001-2008. ECE is always an
				evergreen department and it has been making an all round progress by
				the constructive and valuable guidance of the management. The
				greatest asset of the department is its highly motivated and learned
				faculty with well equipped and furnished laboratories.</p>

			<p>Our policy is to provide best inputs to the students and to
				develop them to imbibe the spirit of professionalism, dedication &
				commitment. Students are facilitated with practical learning through
				stipendiary internships and industrial visits. Skilled workshops,
				Hands on Engineering, Seminars & Lecture Series are helping the
				students to improve the level of understanding.</p>

			<p>Student&rsquo;s talents are harvested through with the regular
				programs like Talent Expo, Poster Presentations & Food Festivals.
				Research activities are initiated students through projects. Through
				the Project to Product scheme of the department students have
				published more than 50 research papers in internationally renowned
				journals and conferences. Completing Online Certificate Courses in
				nationally recognized forums such NPTEL, OEEE, etc have become a
				habitual of the ECE students. ECEians are cracking the GATE exam
				every year. Our students are scattered across the globe for higher
				studies and appointments.</p>
		</div>




	</div>
	<div class="footer">

		<p>Building The Future On A Foundation of Excellence.</p>

		</ul>
	</div>
</body>
</html>
