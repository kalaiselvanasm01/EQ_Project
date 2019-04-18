<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Home</title>
        <c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
        <link rel="stylesheet" href="<c:url value="${contextPath}/styles/jquery-ui.min.css" />"/>
        <link href="<c:url value="${contextPath}/styles/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="${contextPath}/styles/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<c:url value="${contextPath}/styles/EQstyle.css" />"/>
        <script src="<c:url value="${contextPath}/scripts/jquery-3.1.1.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/jquery-ui.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="${contextPath}/scripts/resetTestHistory.js" />" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="addQtnPage"/></jsp:include>
        <div class="container-fluid">
            <div class="row" id="resetTestDiv">
                <div class="form-group col-sm-12 col-xs-12 ">
                    <select id="resetTest" name="username" class="form-control" required="required">
                        <option value="">SELECT USERNAME TO REVOKE TEST ATTENDED</option>
                        <c:forEach items="${userNameList}" var="userName">
                            <option value="<c:out value="${userName}" />"><c:out value="${userName}" /></option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-xs-12 col-sm-12 center-block">
                    <input value="Reset" class="btn btn-danger center-block" type="button" id="resetTestBtn" />
                </div>
            </div>
        </div>
    </body>
</html>
