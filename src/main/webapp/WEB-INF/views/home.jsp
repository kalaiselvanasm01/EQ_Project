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
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="homePage"/></jsp:include>
        <div class="container-fluid">
            <div class="row"> 
                <div class="col-sm-12 col-xs-12" style="height: 900px; margin-top:-1.5%; margin-left:-0.45%;">
                   <div class="row"> 
                        <div class="container-fluid" style="margin-right: -2.5%;">
                            <div style="overflow: hidden; position:relative; margin-bottom:10px; margin-left:-1.5%; margin-top:0px; height:100%;">
                                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                        <li data-target="#myCarousel" data-slide-to="1"></li>
                                        <li data-target="#myCarousel" data-slide-to="2"></li>
                                        <li data-target="#myCarousel" data-slide-to="3"></li>
                                        <li data-target="#myCarousel" data-slide-to="4"></li>
                                        <li data-target="#myCarousel" data-slide-to="5"></li>
                                        <li data-target="#myCarousel" data-slide-to="6"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <img class="ima" alt="" src="images/slide1.jpg" style="width:100%;"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide2.jpg" style="width:100%;"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide3.jpg"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide4.jpg"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide5.jpg"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide6.jpg"/>
                                        </div>
                                        <div class="item">
                                            <img class="ima" alt="" src="images/slide7.jpg"/>
                                        </div>
                                    </div>
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                       <div class="col-sm-12 col-xs-12">
                           <table align="center">
                               <tr>
                                   <td>
                                       <div style=" width:650px; color:black; margin-top:-4.8%;">
                                            <div class="w3-row">
                                                   <div class="w3-col m4 l4">
                                                       <div style="padding:10px 10px 10px 10px;">
                                                           <div style="background-color:#29affb; color:White; text-align:center; width:100%; padding:10px 0px 10px 0px;">
                                                               Chief Mentor's Message
                                                           </div>
                                                           <div class="w3-card-16">
                                                               <center>
                                                                <img src="images/MD.jpg" alt="MD_Arvindhan" align="center" style="padding:10px 10px 10px 10px;" />
                                                                <div class="w3-title text-black text-center" style="font-size:11px;">
                                                                    Tr.J.Arawindhan, Chief Mentor<br>
                                                                    Achariya World Class Education
                                                                </div>
                                                               </center>
                                                           </div>
                                                           <br />
                                                           <div style="text-align:justify; font-size:12px; padding:10px 20px 10px 20px;">
                                                               <b>W</b>orking out Wonders in life is a VOW. It is the mirror to get a hold of your person.
                                                               That is a self-hug.....
                                                               <br/>
                                                               <div style="position:relative; width:100%; text-align:right;">
                                                                   <a href="MD_Speech.aspx" style="background-color:#29affb; color:White; text-align:center; padding:3px 3px 3px 3px;">
                                                                       Read More
                                                                   </a>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </td><td>
                                               <div class="w3-col m4 l4" style="width:643px; color:black;">
                                                   <div style="padding:10px 10px 10px 10px;">
                                                       <div style="background-color:#29affb; color:White; text-align:center; width:100%; padding:10px 0px 10px 0px;">
                                                           Know My Intelligence 
                                                       </div>

                                                       <div class="w3-card-16">     
                                                           <center>               
                                                               <img src="images/MIC1.png" alt="MI" style="padding:10px 10px 10px 10px;" />
                                                               <div class="w3-title text-black" style="font-size:11px;">
                                                                   Multiple Intelligence Test
                                                               </div></center>
                                                       </div>
                                                       <br />
                                                       <div style="text-align:justify; font-size:12px; margin-top:-13px; padding:10px 20px 10px 20px;">
                                                           Clarity is <b>POWER</b>...<br/>
                                                           Your brain knows who you are and how you have to be!!! 
                                                           All you need is Clarity...
                                                           the more clear you are about exactly what it is you want,
                                                           the more your brain knows how to get it...
                                                           <div style="position:relative; width:100%; text-align:right;">
                                                               <a href="TestPage.aspx" style="background-color:#29affb; color:White; text-align:center; padding:3px 3px 3px 3px;">
                                                                   Take a Test
                                                               </a>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </div>
                                           </td>
                                        </tr>
                                    </table>
                       </div>
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12" style="margin-bottom:-30px; height:343px; background:darkred url('/images/myPattern.png'); background-blend-mode: difference; margin-top:-1.5%; ">
                    <div class="col-sm-6 col-xs-6 cseDeptInfo" style="width: 49%; ">
                        <div class="" style=""><img src="<c:url value="${contextPath}/images/Dept/cse.png" />" alt="CSE" style="width: 90px;padding-top: 5px;margin-left: -9px;" /></div>
                        <div style="text-align: justify;padding-top: 10px;padding-left: 15px;padding-right: 5px;"> This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. </div>
                    </div>
                    <div class="col-sm-6 col-xs-6 civilDeptInfo" style="width: 49.5%;">
                        <div class="" style=""><img src="<c:url value="${contextPath}/images/Dept/civil.png"/>" alt="CIVIL" style="width: 90px;padding-top: 5px;margin-left: -9px;"/></div>
                        <div style="text-align: justify;padding-top: 10px;padding-left: 15px;padding-right: 5px;"> This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. </div>
                    </div>
                    <div class="col-sm-6 col-xs-6 eceDeptInfo" style="width: 49%;">
                        <div class="" style=""><img src="<c:url value="${contextPath}/images/Dept/ece.png"/>" alt="ECE" style="width: 90px;padding-top: 5px;margin-left: -9px;"/></div>
                        <div style="text-align: justify;padding-top: 10px;padding-left: 15px;padding-right: 5px;"> This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. </div>
                    </div>
                    <div class="col-sm-6 col-xs-6 eeeDeptInfo" style="width: 49.5%;">
                        <div class="" style=""><img src="<c:url value="${contextPath}/images/Dept/eee.png"/>" alt="EEE" style="width: 90px;padding-top: 5px;margin-left: -9px;"/></div>
                        <div style="text-align: justify;padding-top: 10px;padding-left: 15px;padding-right: 5px;"> This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. </div>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                    <div class="col-sm-6 col-xs-6 mechDeptInfo" style="width: 49%;">
                        <div class="" style=""><img src="<c:url value="${contextPath}/images/Dept/mech.png"/>" alt="MECH" style="width: 90px;padding-top: 5px;margin-left: -9px;"/></div>
                        <div style="text-align: justify;padding-top: 10px;padding-left: 15px;padding-right: 5px;"> This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. This is a sample Info Regarding Dept. </div>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
            </div>
        </div>
        <br/>
    </body>
</html>
