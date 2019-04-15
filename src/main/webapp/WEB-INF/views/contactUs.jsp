<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>EQ - Contact Us</title>
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
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="contactUsPage"/></jsp:include>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 col-xs-12" style="border:1px solid black;height:400px; margin-top:-1.5%;">
                    <h3 align="center"><u>CONTACT US</u></h3>
                    <ul class="det" style="font-size: larger;padding-left:40%;">
                        <li>Phone: 0413-2660164 / 3190599</li>
                        <li>E-Mail : acethead@achariya.org</li>
                        <li>Site : www.achariya.in</li>
                        <li>Follow us on Facebook :www.facebook.com/achariya.acet  <a href="http://www.facebook.com/achariya.acet"><img src="images\fb.jpeg" height=20 width=20 style="border-radius:5px; box-shadow:3px 3px 5px black;"></a>
                        </li>
                    </ul>
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3904.
                        0378166884743!2d79.75043131405688!3d11.902455240655453!2m3!1f0!2f
                        0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a53601234d812e3%3A0xcf
                        cd6226b386c7e8!2sAchariya+College+Of+Engineering+And+Technology!5
                        e0!3m2!1sen!2sin!4v1495977750587" 
                        height="200" frameborder="0" style="width: 100%;border:0" allowfullscreen></iframe>
                </div>
                <div class="col-sm-12 col-xs-12" style="margin-bottom:-30px; height:343px; background-color:darkred; margin-top:-1.5%; "></div>
            </div>
        </div>
    </body>
</html>
