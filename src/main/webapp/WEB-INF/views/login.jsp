<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script>
	$(document).ready(function() {
		$("#loginScreen").modal({
			backdrop : "static"
		});
	});
</script>
<div class="modal fade" role="dialog" id="loginScreen">
	<div class="modal-dialog modal-sm">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" align="center">
				<img src="/images/login_edited.png" alt="Login" width="300"
					height="120" />
			</div>
			<div class="modal-body">
				<form action="/j_spring_security_check" method="POST">
					<div class="form-group">
						<input type="text" autocomplete="off"
							class="form-control input-lg" title="Username" id="usernameTxt"
							name="userName" placeholder="Username" required />
					</div>
					<div class="form-group">
						<input type="password" autocomplete="off"
							class="form-control input-lg" title="Password" id="password"
							name="password" placeholder="Password" required />
					</div>
					<c:if test="${not empty param.error}">
						<div class="alert alert-warning" align="center">Invalid Username or
							Password.</div>
					</c:if>
					<c:if test="${not empty param.logout}">
						<div class="alert alert-success" align="center">Logged out
							successfully!!!</div>
					</c:if>
					<c:if test="${not empty param.accessDenied}">
						<div class="alert alert-danger" align="center"><span class="glyphicon glyphicon-remove-sign"></span> Access Denied</div>
					</c:if>
					<div class="modal-footer">
						<div class="btn-group">
							<input type="submit" id="submit" name="submit"
								class="btn btn-danger button submit input-lg" value="Submit" />
							<input type="reset" id="reset" name="reset"
								class="btn btn-danger button reset input-lg" value="Reset" />
						</div>
						<p>
							Not a member? <a
								href="<c:out value="${contextPath}/viewRegister" />"
								id="userRegisterLink">Register</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>