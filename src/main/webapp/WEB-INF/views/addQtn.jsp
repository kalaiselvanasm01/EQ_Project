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
        <script src="<c:url value="${contextPath}/scripts/addQtn.js" />" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="addQtnPage"/></jsp:include>
        <div class="container-fluid">
            <form:form action="addQuestion" method="post" modelAttribute="question" enctype="multipart/form-data">
                <div class="row">
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
                    </div>
                    <div class="form-group col-sm-6 col-xs-6" align="center">
                        <input type="submit" value="Add" id="addQtnBtn" class="btn btn-primary button input-md"/>
                        <input type="reset" value="Reset" id="resetBtn" class="btn btn-primary reset button input-md"/>
                    </div>
                    <div class="form-group previewImage col-sm-12 col-xs-12 " hidden>
                        <img id="previewImage" src="" height="300" alt="Image Preview" style="width:100%;"/>
                    </div>
                </div>
            </form:form>
        </div>
    </body>
</html>
