<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Reset Password</title>
        <c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
        <link rel="stylesheet" href="<c:url value="${contextPath}/styles/jquery-ui.min.css" />"/>
        <link href="<c:url value="${contextPath}/styles/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="${contextPath}/styles/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<c:url value="${contextPath}/styles/EQstyle.css" />"/>
        <script src="<c:url value="${contextPath}/scripts/jquery-3.1.1.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/jquery-ui.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="${contextPath}/scripts/resetPwd.js" />" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="homePage"/></jsp:include>
        <div class="container-fluid">
            <h3 align="center">Reset Password</h3>
            <div id="errorMessage" class="alert alert-danger center-block" style="display: none; height:30px; padding:5px; width: 50%;"></div>
            <div class="infoResetField center-block" style="width:50%;">
                <div class="form-group">
                    <input type="text" autocomplete="off" class="form-control" title="Username" id="usernameTxt" name="userName" placeholder="Username" required/>
                </div>
                <div class="form-group">
                    <input type="date" required="required" name="dateOfBirth" title="Date of Birth" id="dateOfBirth" class="form-control dateOfBirth inputField input-md "/>
                </div>
                <div class="form-group">
                    <input type="text" required="required" name="gender" title="Gender" placeholder="Gender" id="gender" list="genderList" class="form-control gender inputField input-md "/>
                    <datalist id="genderList">
                        <c:forEach var="gender" items="${genderList}" >
                            <option value="${gender}" label="${gender.description}">
                            </c:forEach>
                    </datalist>
                </div>
                <div class="form-group">
                    <input type="email" name="email" title="Email" placeholder="Email" id="email" class="form-control email inputField input-md "/>
                </div>
                <div class="form-group">
                    <input type="tel" required="required" name="phNumber" title="Phone Number" placeholder="Phone Number" id="phNumber" class="form-control phNumber inputField input-md "/>
                </div>
                <div class="btn-group" align="center">
                    <input type="button" value="Submit" id="resetPasswordBtn" style="margin-bottom:15px;" class="btn btn-danger"/>
                </div>
            </div>
            <div class="passwordEntryField center-block"  style="width:50%; display:none;">
                <form:form id="passwordEntryFieldForm" action="passwordResetEntry" method="POST">
                    <div class="form-group">
                        <input type="password" required="required" title="Password" placeholder="Password" id="password" class="form-control password inputField input-md "/>
                        <input type="hidden" name="username" id="username" />
                        <input type="hidden" name="password" id="originalPassword"/>
                    </div>
                    <div class="form-group">
                        <input type="password" required="required" title="Password" placeholder="Confirm Password" id="cPassword" class="form-control password inputField input-md "/>
                    </div>    
                    <div class="btn-group center-block">
                        <input type="submit" value="Change" id="updatePasswordBtn" class="btn btn-danger"/>
                        <input type="reset" value="Reset" class="btn btn-danger"/>
                    </div>
                </form:form>
            </div>
        </div>
    </body>
</html>
