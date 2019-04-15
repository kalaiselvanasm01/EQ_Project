<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Timer</title>
    <script type ="text/javascript">
        function disablerc() {
            return false;
        }
        function noBack() { 
            window.history.forward() 
        }
        noBack();
        window.onload = noBack;
        window.onpageshow = function (evt) { 
            if (evt.persisted) noBack() 
        }
        window.onunload = function () { 
            void (0) 
        }
    </script>
    <link rel="stylesheet" href="<c:url value="${contextPath}/styles/jquery-ui.min.css" />"/>
    <script src="<c:url value="${contextPath}/scripts/jquery-3.1.1.min.js" />"></script>
    <script src="<c:url value="${contextPath}/scripts/jquery-ui.min.js" />"></script>
    <link rel="stylesheet" href="<c:url value="${contextPath}/timer/styles.css" />"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/timer/jquery.countdown.css" />"/>
</head>
<body>
    <div>
        <div id="countdown"></div>
        <p id="note"></p>
        <!-- JavaScript includes -->
        <script src="<c:url value="${contextPath}/timer/jquery.countdown.js"/>"></script>
        <script src="<c:url value="${contextPath}/timer/script.js" />"></script>
    </div>
</body>
</html>

