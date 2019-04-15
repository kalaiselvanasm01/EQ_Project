<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="homePageURL" value="${contextPath}/viewHome"></c:set>
<c:set var="csePageURL" value="#1"></c:set>
<c:set var="civilPageURL" value="#1"></c:set>
<c:set var="eeePageURL" value="#1"></c:set>
<c:set var="ecePageURL" value="#1"></c:set>
<c:set var="mechPageURL" value="#1"></c:set>
<c:set var="testPageURL" value="${contextPath}/takeTest"></c:set>
<c:set var="aboutTestPageURL" value="#1"></c:set>
<c:set var="contactUsPageURL" value="${contextPath}/viewContacts"></c:set>
<c:set var="aboutUsPageURL" value="${contextPath}/aboutUs"></c:set>
<c:set var="addQuestionPageURL" value="${contextPath}/addQtn"></c:set>
<c:set var="deleteQuestionPageURL" value="${contextPath}/deleteQtn"></c:set>
<c:set var="editQuestionPageURL" value="${contextPath}/editQtn"></c:set>
<c:set var="viewQuestionsPageURL" value="${contextPath}/viewQtns"></c:set>
<c:set var="testHistoryPageURL" value="${contextPath}/testHistory"></c:set>
<c:set var="resetPasswordPageURL" value="${contextPath}/resetPwd"></c:set>
<c:set var="resetTestHistoryPageURL" value="${contextPath}/resetTestHistory"></c:set>
<c:set var="removeStudentPageURL" value="${contextPath}/viewStudentInfo"></c:set>

<c:choose>
    <c:when test="${param.displayPage eq 'homePage'}">
        <c:set var="homePageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'csePage'}">
        <c:set var="csePageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'civilPage'}">
        <c:set var="civilPageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'eeePage'}">
        <c:set var="eeePageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'ecePage'}">
        <c:set var="ecePageURL" value="#"></c:set>
    </c:when> 
    <c:when test="${param.displayPage eq 'mechPage'}">
        <c:set var="mechPageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'testPage'}">
        <c:set var="testPageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'aboutTestPage'}">
        <c:set var="aboutTestPageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'contactUsPage'}">
        <c:set var="contactUsPageURL" value="#"></c:set>
    </c:when>
    <c:when test="${param.displayPage eq 'aboutUsPage'}">
        <c:set var="aboutUsPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'addQtnPage'}">
        <c:set var="addQuestionPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'editQtnPage'}">
        <c:set var="editQuestionPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'deleteQtnPage'}">
        <c:set var="deleteQuestionPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'viewQtnPage'}">
        <c:set var="viewQuestionsPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'resetPasswordPage'}">
        <c:set var="resetPasswordPageURL" value="#"></c:set>
    </c:when>    
    <c:when test="${param.displayPage eq 'removeStudentPage'}">
        <c:set var="removeStudentPageURL" value="#"></c:set>
    </c:when>    
</c:choose>
<div class="row">
    <div class="col-sm-12 col-xs-12" style="height:5px; background-color:darkred;"></div>
    <div class="col-sm-12 col-xs-12">
        <div class="col-sm-2 col-xs-2">
            <img src='${contextPath}/images/logo.png' alt='ACET Logo' style="width: 120px;margin-top: 15px;" align="right" id='clgImg' />
        </div>
        <div class="col-sm-8 col-xs-2" style="text-align:center;">
            <h2 class="clgName">
                Achariya College of Engineering Technology
            </h2>
            <h4 class="clgQuotes pull-right" style="text-align:right; margin-right:100px; margin-left:40%; color:#cc0000;">Excellence... Exposure... Expertise...</h4>
        </div>
        <div class="col-sm-2 col-xs-2">
            <img src='${contextPath}/images/Achariya_logo.PNG' alt='Achariya Logo' width="100" height="100" id='achariyaImg' />
        </div>
    </div>
</div>
<nav class="navbar" style="margin-left: -1%; margin-right: -1%;padding-top:2px;">
    <div class="navbar-header" style="margin-top: 13px;margin-left: 25px;margin-right: 15px;color: #f2dede;font-size: larger;">
        <font>Engineering Quotient</font>
    </div>
    <ul class="nav navbar-nav">
        <c:choose>
            <c:when test="${homePageURL eq '#'}">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home" style="margin-right:5px;"></span>Home</a></li>
                </c:when>
                <c:otherwise>
                <li><a href="<c:out value="${homePageURL}" />"><span class="glyphicon glyphicon-home" style="margin-right:5px;"></span>Home</a></li>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${csePageURL eq '#' || civilPageURL eq '#' || ecePageURL eq '#' || eeePageURL eq '#' || mechPageURL eq '#'}">
                    <li class="active dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" ><span class="glyphicon glyphicon-education" style="margin-right: 5px;" ></span>Department
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:out value="${csePageURL}" />">Computer Science Engineering</a></li>
                            <li><a href="<c:out value="${civilPageURL}" />">Civil Engineering</a></li>
                            <li><a href="<c:out value="${eeePageURL}" />">Electrical and Electronics Engineering</a></li>
                            <li><a href="<c:out value="${ecePageURL}" />">Electronics and Communication Engineering</a></li>
                            <li><a href="<c:out value="${mechPageURL}" />">Mechanical Engineering</a></li>
                        </ul>
                    </li>
                </c:when>
            <c:otherwise>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-education" style="margin-right: 5px;" ></span>Department
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:out value="${csePageURL}" />">Computer Science Engineering</a></li>
                        <li><a href="<c:out value="${civilPageURL}" />">Civil Engineering</a></li>
                        <li><a href="<c:out value="${eeePageURL}" />">Electrical and Electronics Engineering</a></li>
                        <li><a href="<c:out value="${ecePageURL}" />">Electronics and Communication Engineering</a></li>
                        <li><a href="<c:out value="${mechPageURL}" />">Mechanical Engineering</a></li>
                    </ul>
                </li>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${sessionScope.userDetails.isAdmin ne true || sessionScope.userDetails.isAdmin ne true && sessionScope.userDetails.ultimateAdmin ne true}">
                <c:choose>
                    <c:when test="${testPageURL eq '#' || aboutTestPageURL eq '#'}">
                        <li class="active dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-pencil" style="margin-right: 5px" ></span>Test
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="<c:out value="${aboutTestPageURL}" />">About Test</a></li>
                                <li><a href="<c:out value="${testPageURL}" />">Take Test</a></li>
                            </ul>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-pencil" style="margin-right: 5px" ></span>Test
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="<c:out value="${aboutTestPageURL}" />">About Test</a></li>
                                <li><a href="<c:out value="${testPageURL}" />">Take Test</a></li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:when>
        </c:choose>
            <c:choose>
            <c:when test="${aboutUsPageURL eq '#'}">
                <li class="active"><a href="<c:out value="${aboutUsPageURL}"/>"><span class="glyphicon glyphicon-info-sign" style="margin-right:5px; " ></span>About Us</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="<c:out value="${aboutUsPageURL}"/>"><span class="glyphicon glyphicon-info-sign" style="margin-right:5px; " ></span>About Us</a></li>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${contactUsPageURL eq '#'}">
            <li class="active"><a href="<c:out value="${contactUsPageURL}" />"><span class="glyphicon glyphicon-file" style="margin-right: 5px;" ></span>Contact Us</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="<c:out value="${contactUsPageURL}" />"><span class="glyphicon glyphicon-file" style="margin-right: 5px;" ></span>Contact Us</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
    <ul class="nav navbar-nav navbar-right" style="margin-right:15px;">
        <c:choose>
            <c:when test="${sessionScope.userDetails eq null || sessionScope.userDetails eq '' }">
                <li><a id="userRegister"><span class="glyphicon glyphicon-user" style="margin-right:5px;"></span> Register</a></li>
                <li><a id="userLogin"><span class="glyphicon glyphicon-log-in" style="margin-right:5px;"></span> Login</a></li>
            </c:when>
            <c:otherwise>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="text-transform:capitalize;">
                        <span class="glyphicon glyphicon-user" style="margin-right: 5px;"></span> 
                        <c:out value="${sessionScope.userDetails.firstName}" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Role: <c:out value="${sessionScope.role}" /></a></li>
                        <c:choose>
                            <c:when test="${sessionScope.role eq 'Admin'}">
                                <li><a href="<c:out value="${resetPasswordPageURL}" />">Reset Student Password</a></li>
                                <li><a href="<c:out value="${addQuestionPageURL}" />">Add Questions</a></li>
                                <li><a href="<c:out value="${deleteQuestionPageURL}" />">Remove Questions</a></li>
                                <li><a href="<c:out value="${viewQuestionsPageURL}" />">View All Questions</a></li>
                                <li><a href="<c:out value="${editQuestionPageURL}" />">Update Questions</a></li>
                                <li><a href="<c:out value="${testHistoryPageURL}" />">Test History</a></li>
                            </c:when>
                            <c:when test="${sessionScope.role eq 'Ultimate Admin'}">
                                <li><a href="<c:out value="${resetPasswordPageURL}" />">Reset Student Password</a></li>
                                <li><a href="<c:out value="${addQuestionPageURL}" />">Add Questions</a></li>
                                <li><a href="<c:out value="${deleteQuestionPageURL}" />">Remove Questions</a></li>
                                <li><a href="<c:out value="${viewQuestionsPageURL}" />">View All Questions</a></li>
                                <li><a href="<c:out value="${editQuestionPageURL}" />">Update Questions</a></li>
                                <li><a href="<c:out value="${testHistoryPageURL}" />">View Test History</a></li>
                                <li><a href="<c:out value="${resetTestHistoryPageURL}" />">Delete Test History</a></li>
                                <li><a href="<c:out value="${removeStudentPageURL}" />">Remove Student</a></li>
                                <li><a href="#">Add/Remove Admin Access</a></li>
                            </c:when>
                        </c:choose>
                        <li><a href="<c:out value="${contextPath}/logout" />">
                            <span class="glyphicon glyphicon-off" style="margin-right:5px;"></span>Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</nav>
<script type="text/javascript" src="${contextPath}/scripts/menuHeader.js" ></script>
<script type="text/javascript" src="${contextPath}/scripts/commonUtils.js" ></script>
<c:if test="${not empty error}">
    <div class="alert alert-danger center-block" id="alertModel" style="height: 28px;padding-top: 3px;width: 30%;text-align: center;margin-top: -1.5%;border-radius: 0px 0px 40px 40px;">
        <strong>Alert! </strong> <c:out value="${error}"></c:out>
    </div>
    <script type="text/javascript">
        autoHide("alertModel");
    </script>
</c:if>
<c:if test="${not empty success}">
    <div class="alert alert-success center-block" id="successModel" style="height: 28px;padding-top: 3px;width: 30%;text-align: center;margin-top: -1.5%;border-radius: 0px 0px 40px 40px;">
        <strong>Success! </strong> <c:out value="${success}"></c:out>
    </div>
    <script type="text/javascript">
        autoHide("successModel");
    </script>
</c:if>
<c:choose>
    <c:when test="${sessionScope.userDetails eq null || sessionScope.userDetails eq '' }">
        <jsp:include page="login.jsp" ></jsp:include>
        <jsp:include page="register.jsp"></jsp:include>
    </c:when>
</c:choose>
<div class="alert alert-danger center-block" id="scriptAlertModel" style="height: 28px;padding-top: 3px;width: 30%;text-align: center;margin-top: -1.5%;border-radius: 0px 0px 40px 40px; display:none;"></div>
<div class="alert alert-success center-block" id="scriptSuccessModel" style="height: 28px;padding-top: 3px;width: 30%;text-align: center;margin-top: -1.5%;border-radius: 0px 0px 40px 40px; display:none;"></div>