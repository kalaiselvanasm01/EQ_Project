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
        <script src="<c:url value="${contextPath}/scripts/viewStudentsInfo.js" />" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="removeStudentPage"/></jsp:include>
        <div class="container-fluid">
            <div class="viewStudentsInfo">
                <table id="studentInfoTable">
                    <thead>
                        <th>Name</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Father Name</th>
                        <th>Address</th>
                        <th>Nationality</th>
                        <th>Religion</th>
                        <th>HSC Group</th>
                        <th>Marks Obtained</th>
                        <th>Blood Group</th>
                        <th>Email</th>
                        <th>Ph. Number</th>
                        <th>Expected Dept</th>
                        <th>Username</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${userDetailsList}" var="userDetails">
                            <tr>
                                <td><c:out value="${userDetails.firstName}" />&nbsp;<c:out value="${userDetails.lastName}" /></td>
                                <td><c:out value="${userDetails.dateOfBirth}" /></td>
                                <td><c:out value="${userDetails.gender}" /></td>
                                <td><c:out value="${userDetails.fatherName}" /></td>
                                <td><c:out value="${userDetails.address}" /></td>
                                <td><c:out value="${userDetails.nationality}" /></td>
                                <td><c:out value="${userDetails.religion}" /></td>
                                <td><c:out value="${userDetails.hscGroup}" /></td>
                                <td><c:out value="${userDetails.expObtHSCMark}" /></td>
                                <td><c:out value="${userDetails.bloodGroup}" /></td>
                                <td><c:out value="${userDetails.email}" /></td>
                                <td><c:out value="${userDetails.phNumber}" /></td>
                                <td><c:out value="${userDetails.expectedDept}" /></td>
                                <td><c:out value="${userDetails.userName}" /></td>
                                <td class="text-center">
                                    <div class="btn btn-danger removeStudentBtn" data-username="<c:out value="${userDetails.userName}" />">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
