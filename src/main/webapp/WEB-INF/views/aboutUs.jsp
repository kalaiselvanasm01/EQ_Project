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
        
        <style>
            ul li, ol li {
                font-size:large;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" ><jsp:param name="displayPage" value="aboutUsPage"/></jsp:include>
        <div class="container-fluid">
            <div style="font-size:25px; color:black; margin-left:0px;">
                <div style="margin-left:10px; margin-right :10px; margin-bottom:10px;">
                    <p align=left>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2" style="width:900px;" rowspan="11">
                                <div style="margin-right:-1px; color:black; text-align:justify;  margin-top:-42%; margin-left:0px; padding-left:10px; padding-right: 10px; ">
                                    <div style="margin-left:10px; margin-right :10px;  margin-bottom:10px;">
                                        <p align=left><font size=20 style="color:#7a16ea;">History</font></p>
                                        <p style="font-size:smaller;">The founding group ACHARIYA World Class Educational Institutions
                                            had it&#8217;s humble beginnings more than a decade ago by the launch of The ACHARIYA Teacher 
                                            Education Academy and ACHARIYA College of Education in the year 2000. This was followed by the 
                                            starting of the ACHARIYA Siksha Mandir and gradually classes were added. In the year 2001 ACHARIYA 
                                            Bala Siksha Mandir was inaugurated at Thengaithittu Campus and its satellite branches were started 
                                            at various places in Puducherry. In the year 2004 ACHARIYA Arts and Science College was started followed 
                                            by Sri Sampourna Vidyalayam in the year 2005. ACHARIYA School of Business and Technology came into 
                                            being in the year 2006.
                                            ACHARIYA COLLEGE OF ENGINEERING TECHNOLOGY (ACET) was inaugurated on 29.09.2010 
                                            and commenced from the academic year 2010-11with a sanctioned strength of 300 
                                            students with five branches:
                                        <br><ul><li style="margin-left: 20px;">B.Tech Electronics and Communication Engineering(ECE)</li>
                                            <li style="margin-left: 20px;">B.Tech Electrical and Electronics Engineering(EEE)</li>
                                            <li style="margin-left: 20px;">B.Tech. Computer Science Engineering(CSE)</li>
                                            <li style="margin-left: 20px;">B.Tech Mechanical Engineering and</li>
                                            <li style="margin-left: 20px;">B.Tech Civil Engineering
                                            </li></ul>   
                                        <br>
                                        <font size=20 style="color:#7a16ea;">Vision and Mission</font><br>
                                        <br>
                                        <b style="color:#ff0505;">Vision Statement</b><br>To make suitable changes in the PHYSICAL, 
                                        MENTAL, INTELLECTUAL, EMOTIONAL and SPIRITUAL PERSONALITY of every individual and to develop 
                                        and elevate them to lead a higher degree of life enabling them and excel in his present nature 
                                        and elevate to become an ACHARIYAN.
                                        <br>
                                        <b style="color:#ff0505;">Mission Statement</b><br>
                                        ACHARIYA Mission is to provide the best of world class infrastructure with opportunities for 
                                        Educational, Vocational, Social, Cultural & Leadership development to promote learning skills 
                                        for life long personal achievement meeting the diverse and changing needs of humanity to make 
                                        Personal &#8211; Team achievements and accomplishments by Manifesting Human Potential.
                                        <br>
                                        <b style="color:#ff0505; ">Objectives-Aims</b>
                                        <ol style="">
                                            <li>Inculcate appropriate changes in the PHYSICAL well being of every student.</li>
                                            <li>Develop every student into a MENTALLY strong and intelligent citizen.</li>
                                            <li>Refurbish the native intelligence with knowledgeable INTELLECT required for engineering.</li>
                                            <li>Balance the EMOTIONAL quotient and logical reasoning of every budding engineer.</li>
                                            <li>Refresh the SPIRITUAL PERSONALITY of every individual and to develop and elevate them 
                                                to lead a higher degree of life</li>
                                            <li>Excel in every students present nature and elevate appropriately to become an ACHARIYAN.</li>
                                            <li>Provide the best of world class infrastructure with opportunities for Educational, 
                                                vocational, Social, Cultural & Leadership development.</li>
                                            <li>Promote learning skills for lifelong personal achievement meeting the diverse and 
                                                changing needs of humanity</li>
                                            <li>Make Personal &#8211; Team achievements and accomplishments by Manifesting Human potential.</li>
                                            <li>Evolve every ACHARIYAN as a superior individual widely accomplished and acclaimed 
                                                in all essential and intellectual practices in order to become a responsible citizen.</li>
                                        </ol> 
                                        <font size=20 style="color:#7a16ea;">Other- Institutions</font><br>
                                        <b style="color:#ff0505; text-align: left;">Our World Class Colleges</b>
                                        <ol>
                                            <li>ACHARIYA ARTS AND SCIENCE COLLEGE</li>
                                            <li>ACHARIYA COLLEGE OF EDUCATION</li>
                                            <li>ACHARIYA TEACHER EDUCATION ACADEMY</li>
                                            <li>ACHARIYA CAMBRIAN COLLEGE</li>
                                            <li>ACHARIYA SCHOOL OF TOURISM AND HOTEL MANAGEMENT</li>
                                            <li>ACHARIYA SCHOOL OF BUSINESS AND TECHNOLOGY</li>
                                        </ol>
                                        <b style="color:#ff0505;">Our World Class Schools</b>
                                        <ol>
                                            <li>ACHARIYA SIKSHA MANDIR</li>
                                            <li>ACHARIYA BALA SIKSHA MANDIR</li>
                                            <li>SRI SAMPOURNA VIDYALAYAM</li>
                                            <li>AKLAVYA</li>
                                    </div>
                                </div>
                            </td>
                            <td >
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1" rowspan="4">
                                <table style="width: 100%;">
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; padding:5px; color:black; font-size:15px;">
                                            <img alt="" class="auto-style5" src="images/asm.png"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/asbt.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style5" src="images/ssv.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style7" src="images/aklavya.png" /></td>
                                    </tr>
                                </table>
                            </td>
                            <td style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;" align="center">
                                <img alt="" class="auto-style3" src="images/team.png" /><br />Tr. J. Arawindhan, Chief Mentor<br>
                                Achariya World Class Education
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br /><br /><br /><br /><br /></td>
                        </tr>
                        <tr>
                            <td class="auto-style1" rowspan="4">&nbsp;</td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1;" align="center">
                                <img alt="" class="auto-style4" src="images/MIC1.png" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style1" rowspan="2" >
                                <table style="width:100%;">
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/acet.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/aasc.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/ace.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/atea.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/asthm.png" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="border:2px solid #7a16ea; box-shadow:10px 10px 20px #7853a1; color:black; font-size:15px;">
                                            <img alt="" class="auto-style6" src="images/asbt.png" /></td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
