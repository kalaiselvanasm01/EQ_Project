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
        <link href="<c:url value="${contextPath}/styles/jquery.dataTables.min.css"/>" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<c:url value="${contextPath}/styles/EQstyle.css" />"/>
        <script src="<c:url value="${contextPath}/scripts/jquery-3.1.1.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/jquery-ui.min.js" />"></script>
        <script src="<c:url value="${contextPath}/scripts/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="${contextPath}/scripts/jquery.dataTables.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="${contextPath}/scripts/testPage.js" />" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="testPage"/></jsp:include>
        <div class="container-fluid">
            <h3 align="center">Delete/Remove Question</h3>
            <div id="errorMessage" class="alert alert-danger center-block" style="display: none; height:30px; padding:5px; width: 50%;"></div>
            <form:form action="deleteQuestion" method="post">
                <div class="infoResetField center-block" style="width:50%;">
                    <div class="form-group">
                        <select name="questionNo" class="form-control" >
                            <c:forEach items="${testQuestionList}" var="question">
                                <option value="<c:out value="${question.questionNo}"/>"><c:out value="${question.question}" /></option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group center-block">
                        <input type="submit" class="btn btn-danger" value="Delete" />
                    </div>
                </div>
            </form:form> 
        </div>
    </body>
</html>
