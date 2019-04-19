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
/*.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
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
}
.text-img{
overflow : hidden !important;
}
.text-img .content {
    position: absolute;
    bottom: 0;
    background: rgb(0, 0, 0);
    background: rgba(0, 0, 0, 0.5);
    color: #f1f1f1;
    width: 77.5%;
    padding: 20px;
    margin-left: 80px;
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
						<h1>COMPUTER SCIENCE AND ENGINEERING</h1>

					</section>
				</div>
			</div>
			<div class="col-sm-4 aligns text-img">
				<img src="images/cse-hod-255x255.jpg" alt="CSE_HOD" class="center" />
				<div class="content">
				<h2>Er.A.Kannaki@Vasantha Azhagu B.E.,M.E.,(Ph.D)., </h2>
				<p>AP(SG) and Head,Department of CSE.</p>
				</div>

			</div>
			<div class="col-sm-4 aligns-right">
				<h2 style="font-size: 47px; line-height: 1.6;">
					<strong>&ldquo; You Might Not Think That Programmers Are
						not Artist. But Programming Is An External Creative Profession.
						But, It's A Logic &rdquo;</strong>
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
			<p>&ldquo; The world is an open source, and computer science is
				the art of accessing it &rdquo;</p>
			The Computer Science Engineering is a proficient branch, that offers
			technical and professional competency to students and also aids in
			inculcating moral and ethical values. The world is evolving
			technologically and Computer Science is the discipline that lies at
			the intersection of computing mathematics & applications in science,
			engineering and social sciences. We develop advances in computing
			that enable discovery & innovation in other domains.
		</div>
		<div class="col-sm-12 dept-aligns">
			<h4 style="font-size: 30px;">
				<strong>Department Objectives</strong>
			</h4>
		</div>
		<div class="col-sm-12 dept-Cont_aligns">
			<ul>
				<li>The department equips the students to perform analysis,
					specification, design and implement exceptional computer solutions.</li>
				<li>The students are bestowed with practical experience based
					on the cutting-edge computer technology.</li>
				<li>The department aspires to produce accomplished
					professionals by enhancing their general skills in logical &
					analytical understanding.</li>
				<li>The students are facilitated in their career placements by
					providing multiple placement training courses.</li>
			</ul>

		</div>


	</div>
	<div class="footer">

		<p>Building The Future On A Foundation of Excellence.</p>

		</ul>
	</div>
</body>
</html>
