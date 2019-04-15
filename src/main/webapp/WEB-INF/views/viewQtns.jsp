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
        <script src="<c:url value="${contextPath}/scripts/viewQtns.js" />" type="text/javascript"></script>
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
            #questionTable_info {
                margin-left:45%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="viewQtnsPage"/></jsp:include>
        <div class="container-fluid">
            <div class="row"> 
                <table id="questionTable" style="overflow-x: hidden; overflow-y: hidden;">
                    <c:forEach var="question" varStatus="index" items="${allQuestions}">
                        <tr>
                            <td>
                                <div class="row">
                                    <input type="hidden" value="<c:out value="${totalPages}" />" id="totalPages"/>
                                    <div class="col-sm-1 col-xs-1" id="indexNumber" style="width:1%;"><c:out value="${index.index + 1}" /></div>
                                    <div class="col-sm-11 col-xs-11"><c:out value="${question.question}" /><input type="hidden" value="<c:out value="${question.questionNo}" />" name="" /></div>
                                    <c:forEach items="${question.choiceList}" varStatus="choiceIndex" var="choice">
                                        <div class="col-sm-3 col-xs-3">
                                            <c:forEach items="${question.deptList}" var="dept" varStatus="deptIndex">
                                                <c:if test="${choiceIndex.index eq deptIndex.index}" >
                                                    <c:set var="deptValue" value="${dept}" ></c:set>
                                                </c:if>
                                            </c:forEach>
                                            Choice<c:out value="${choiceIndex.index+1}" />=<c:out value="${choice}" />(<c:out value="${deptValue}" />)
                                        </div>
                                    </c:forEach>
                                    <c:if test="${question.hasImage eq true}">
                                        <div class="col-sm-12 col-xs-12">
                                            <img src="<c:out value="${contextPath}/qtnImages/${question.imageName}" />" style="width:100%; height:200px;" alt="<c:out value="" />"/>
                                        </div>                                
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
