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
        <script src="<c:url value="${contextPath}/scripts/testHistory.js" />" type="text/javascript"></script>
        <c:if test="${LOGIN eq false}">
            <script type="text/javascript">
                $(document).ready(function () {
                    $("body").ready(function () {
                        $("#userLogin").trigger("click");
                    });
                });
            </script>
        </c:if>
        <style>
            .dataTables_length {
                display: none;
            }
            .dataTables_scroll {
                margin-top:-3%;
            }
            #testHistoryList tr,#testHistoryList th{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="viewQtnsPage"/></jsp:include>
        <div class="container-fluid">
            <h3 class="text-center " style="border-top:1px solid black;border-bottom:1px solid black;margin-top:-0.5%;">Test History</h3>
            <table id="testHistoryList" style="overflow-x: hidden; overflow-y: hidden;">
                <thead>
                    <tr>
                        <th>Student Name</th>
                        <th>Date of Birth</th>
                        <th>Gender</th>
                        <th>Father Name</th>
                        <th>Phone Number</th>
                        <th>Expected Dept.</th>
                        <th>Obtained Dept.</th>
                        <th>Attended Date & Time</th>
                        <th>Actions</th>                                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="testHistoryIndex" items="${testHistoryList}">
                        <tr>
                            <td><c:out value="${testHistoryIndex.userDetails.firstName}" />&nbsp;<c:out value="${testHistoryIndex.userDetails.lastName}" /></td>
                            <td><c:out value="${testHistoryIndex.userDetails.dateOfBirth}" /></td>
                            <td><c:out value="${testHistoryIndex.userDetails.gender}" /></td>
                            <td><c:out value="${testHistoryIndex.userDetails.fatherName}" /></td>
                            <td><c:out value="${testHistoryIndex.userDetails.phNumber}" /></td>
                            <td><c:out value="${testHistoryIndex.userDetails.expectedDept}" /></td>
                            <td><c:out value="${testHistoryIndex.resultDept}" /></td>
                            <td><c:out value="${testHistoryIndex.attendedDate}" /></td>
                            <td><a href="<c:out value="${contextPath}/reportFiles/${testHistoryIndex.reportFileName}" />" target="_blank"><i class="glyphicon glyphicon-save"></i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
