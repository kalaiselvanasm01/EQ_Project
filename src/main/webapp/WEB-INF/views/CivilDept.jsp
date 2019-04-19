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
	margin-left: 5%;
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
						<h1>Civil ENGINEERING</h1>

					</section>
				</div>
			</div>
			<div class="col-sm-4 aligns text-img">
				<img src="images/civil-hod.jpg" alt="CSE_HOD" class="center" />
				<div class="content">
					<h2>Er.R.Chandrasekaran</h2>
					<p> M.tech., (Ph.D).,</p>
					<p>Assistant professor and Head, Department of Civil Engineering</p>
				</div>
			


			</div>
			<div class="col-sm-4 aligns-right">
				<h2 style="font-size: 47px; line-height: 1.6;">
					<strong>&ldquo; The Best Creators Next To God Are Civil
						Engineers &rdquo;</strong>
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
			<p>
				&ldquo;The pioneer of all studies is considered as engineering of
				which civil engineering is considered as <strong> &ldquo;
					The mother of engineering Civil engineering &rdquo; </strong> offers a wide
				range of especially in the development of private and public sectors
				which directly influence the growth of the nation.
			</p>

			<p>Civil Engineering, one of the oldest engineering disciplines
				involves planning, designing and executing of structural works. The
				profession deals with a variety of engineering tasks inclusive of
				designing, supervision and construction activities of public works
				like roads, bridges, tunnels, buildings, airports, dams, water
				works, sewage systems, ports etc. and offers a multitude of
				challenging. The civil engineering arena is always in great demand
				until the human race exists on this planet.</p>

			<p>The major specializations within civil engineering are
				structural, geo-technical engineering, hydraulics & water resources,
				environmental, construction and transportation. Enhancing the scope
				for learning for students, the department frequently organizes
				Seminars, Guest Lectures, Expert Lectures, Technical Symposiums and
				paper contests.</p>
		</div>




	</div>
	<div class="footer">

		<p>Building The Future On A Foundation of Excellence.</p>

		</ul>
	</div>
</body>
</html>
