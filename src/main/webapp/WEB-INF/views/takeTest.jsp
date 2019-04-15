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
        <c:if test="${LOGIN eq false}">
            <script type="text/javascript">
                $(document).ready(function () {
                    $("body").ready(function () {
                        $("#userLogin").trigger("click");
                    });
                });
            </script>
        </c:if>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#takeTest").on("click",function() {
                    window.location.pathname="/testPage";
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="testPage"/></jsp:include>
        <div class="container-fluid">
            <c:choose>
                <c:when test="${sessionScope.userDetails.isattended eq true }">
                    <script>
                        window.location='/viewReport';
                    </script>
                </c:when>
                <c:otherwise>
                    <div class="row">
                        <div class="col-sm-12 col-xs-12">
                            <div class="rules">
                                <h3 style="text-align: center;"><u>Instructions for Test</u></h3>
                                <p style="text-align:right; color:red;"></p>
                                <ol style="font-size:larger; margin-left:30%;">
                                    <li>Test should be completed within the <b>given time</b></li>
                                    <li><b>Additional time of 5 mins</b> will be given to go across the details of Our College and all departments</li>
                                    <li>The <b>Test Report</b> will be generated at the end of this Test</li>
                                    <li>Once the test is <b>attended</b> and the report has been generated, <b>Retest will not be allowed</b></li>
                                    <li>Once the password is lost it can be <b>reseted</b> only with the help of the <b>admin</b></li>
                                </ol>
                            </div>
                        </div>
                        <div class="col-sm-12 col-xs-12" align="center">
                            <button id="takeTest" class="btn btn-danger">Take Test</button>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </body>
</html>
