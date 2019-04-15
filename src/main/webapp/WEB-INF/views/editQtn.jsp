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
        <script src="<c:url value="${contextPath}/scripts/editQtn.js" />" type="text/javascript"></script>
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
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="viewQtnsPage"/></jsp:include>
        <div class="container-fluid">
            <div class="row" id="selectQtnDiv">
                <div class="form-group col-sm-12 col-xs-12 ">
                    <select id="questionsId" name="questionNo" class="form-control" required="required">
                        <option value="">SELECT THE QUESTION TO EDIT</option>
                        <c:forEach var="question" items="${questionList}">
                            <option value="<c:out value="${question.questionNo}" />"><c:out value="${question.question}"/></option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-xs-12 col-sm-12 center-block">
                    <input value="Edit" class="btn btn-danger center-block" type="button" id="editQtnBtn" />
                </div>
            </div>
            <div class="row" id="editQtnDiv">
                <form action="updateQtn" method="post" enctype="multipart/form-data">
                    <div class="form-group  col-sm-12 col-xs-12 ">
                        <input type="text" required="required" name="question" title="Question" placeholder="Question" id="question" class="form-control question inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice1" id="firstCh" class="form-control choices inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice1 Dept" id="firstDept" class="form-control dept inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice2" id="secondCh" class="form-control choices inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice2 Dept" id="secondDept" class="form-control dept inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice3" id="thirdCh" class="form-control choices inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice3 Dept" id="thirdDept" class="form-control dept inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice4" id="fourthCh" class="form-control choices inputField input-md "/>
                    </div> 
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice4 Dept" id="fourthDept" class="form-control dept inputField input-md "/>
                    </div> 
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice5" id="fifthCh" class="form-control choices inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice5 Dept" id="fifthDept" class="form-control dept inputField input-md "/>
                    </div>
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice6" id="sixthCh" class="form-control choices inputField input-md "/>
                    </div> 
                    <div class="form-group col-sm-6 col-xs-6">
                        <input type="text" required="required" title="Choice" placeholder="Choice6 Dept" id="sixthDept" class="form-control dept inputField input-md "/>
                    </div> 
                    <div class="col-sm-1 col-xs-12 ">
                        <input type="checkbox" name="hasImage" id="hasImage" class="hasImage "/> Has Image
                    </div>
                    <div class="form-group  col-sm-5 col-xs-5 ">
                        <input type="file" name="imageFile" id="imageFile" accept="image/*" disabled="disabled" class="form-control imageFile inputField input-md "/>
                        <input type="hidden" id="choices" name="choices" />
                        <input type="hidden" id="questionNo" name="questionNo" />
                    </div>
                    <div class="form-group col-sm-6 col-xs-6" align="center">
                        <input type="submit" value="Update" id="updateQtnBtn" class="btn btn-primary button input-md"/>
                        <input type="reset" value="Reset" id="resetBtn" class="btn btn-primary reset button input-md"/>
                    </div>
                    <div class="form-group previewImage col-sm-12 col-xs-12 " >
                        <img id="previewImage" src="" height="300" alt="Image Preview" style="display:none;width:100%;"/>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
