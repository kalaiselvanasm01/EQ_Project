<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="login.jsp" ></jsp:include>
    <div class="modal fade" id="registerScreen" role="dialog" style="margin-top:-3%;">
        <div class="modal-dialog modal-lg">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" align="center">
                    <img src="/images/register_edited.png" alt="Register" width="200" height="80" />
                    <div style="border:1px dashed white; border-radius:0px 0px 20px 20px; background:black; color:#cc0000; outline:white; font-size:20px;" align="center">
                        *** Please Select Gender, Blood Group and Expected Department from the Auto Complete Menu
                    </div>
                </div>
                <form:form id="registerForm" action="register" method="POST" modelAttribute="userDetailsRegister">                        
                    <div class="modal-body row">
                        <div class="form-group  col-sm-12 col-xs-12 ">
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="firstName" title="First Name" placeholder="First Name" id="firstName" class="form-control firstname inputField input-md "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="lastName" title="Last Name" placeholder="Last Name" id="lastName" class="form-control lastname inputField input-md "/>
                            </div>    
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="date" required="required" name="dateOfBirth" title="Date of Birth" id="dateOfBirth" class="form-control dateOfBirth inputField input-md "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="gender" title="Gender" placeholder="Gender" id="gender" list="genderList" class="form-control gender inputField input-md "/>
                                <datalist id="genderList">
                                    <c:forEach var="gender" items="${genderList}" >
                                        <option value="${gender}" label="${gender.description}">
                                    </c:forEach>
                                </datalist>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="fatherName" title="Father Name" placeholder="Father Name" id="fatherName" class="form-control fathername inputField input-md "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="userName" title="Username" placeholder="Userame" id="username" class="form-control username inputField input-md "/>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <textarea required="required" name="address" title="Address" placeholder="Address" id="address" class="form-control address inputField input-md "></textarea>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="nationality" title="Nationality" list="countryList" placeholder="Nationality" id="nationality" class="form-control nationality inputField input-md "/>
                                <datalist id="countryList">
                                    <option value="Afghan">Afghan</option>
                                    <option value="Albanian">Albanian</option>
                                    <option value="Algerian">Algerian</option>
                                    <option value="American">American</option>
                                    <option value="Andorran">Andorran</option>
                                    <option value="Angolan">Angolan</option>
                                    <option value="Antiguans">Antiguans</option>
                                    <option value="Argentinean">Argentinean</option>
                                    <option value="Armenian">Armenian</option>
                                    <option value="Australian">Australian</option>
                                    <option value="Austrian">Austrian</option>
                                    <option value="Azerbaijani">Azerbaijani</option>
                                    <option value="Bahamian">Bahamian</option>
                                    <option value="Bahraini">Bahraini</option>
                                    <option value="Bangladeshi">Bangladeshi</option>
                                    <option value="Barbadian">Barbadian</option>
                                    <option value="Barbudans">Barbudans</option>
                                    <option value="Batswana">Batswana</option>
                                    <option value="Belarusian">Belarusian</option>
                                    <option value="Belgian">Belgian</option>
                                    <option value="Belizean">Belizean</option>
                                    <option value="Beninese">Beninese</option>
                                    <option value="Bhutanese">Bhutanese</option>
                                    <option value="Bolivian">Bolivian</option>
                                    <option value="Bosnian">Bosnian</option>
                                    <option value="Brazilian">Brazilian</option>
                                    <option value="British">British</option>
                                    <option value="Bruneian">Bruneian</option>
                                    <option value="Bulgarian">Bulgarian</option>
                                    <option value="Burkinabe">Burkinabe</option>
                                    <option value="Burmese">Burmese</option>
                                    <option value="Burundian">Burundian</option>
                                    <option value="Cambodian">Cambodian</option>
                                    <option value="Cameroonian">Cameroonian</option>
                                    <option value="Canadian">Canadian</option>
                                    <option value="Cape Verdean">Cape Verdean</option>
                                    <option value="Central African">Central African</option>
                                    <option value="Chadian">Chadian</option>
                                    <option value="Chilean">Chilean</option>
                                    <option value="Chinese">Chinese</option>
                                    <option value="Colombian">Colombian</option>
                                    <option value="Comoran">Comoran</option>
                                    <option value="Congolese">Congolese</option>
                                    <option value="Costa Rican">Costa Rican</option>
                                    <option value="Croatian">Croatian</option>
                                    <option value="Cuban">Cuban</option>
                                    <option value="Cypriot">Cypriot</option>
                                    <option value="Czech">Czech</option>
                                    <option value="Danish">Danish</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominican">Dominican</option>
                                    <option value="Dutch">Dutch</option>
                                    <option value="East Timorese">East Timorese</option>
                                    <option value="Ecuadorean">Ecuadorean</option>
                                    <option value="Egyptian">Egyptian</option>
                                    <option value="Emirian">Emirian</option>
                                    <option value="Equatorial Guinean">Equatorial Guinean</option>
                                    <option value="Eritrean">Eritrean</option>
                                    <option value="Estonian">Estonian</option>
                                    <option value="Ethiopian">Ethiopian</option>
                                    <option value="Fijian">Fijian</option>
                                    <option value="Filipino">Filipino</option>
                                    <option value="Finnish">Finnish</option>
                                    <option value="French">French</option>
                                    <option value="Gabonese">Gabonese</option>
                                    <option value="Gambian">Gambian</option>
                                    <option value="Georgian">Georgian</option>
                                    <option value="German">German</option>
                                    <option value="Ghanaian">Ghanaian</option>
                                    <option value="Greek">Greek</option>
                                    <option value="Grenadian">Grenadian</option>
                                    <option value="Guatemalan">Guatemalan</option>
                                    <option value="Guinea-Bissauan">Guinea-Bissauan</option>
                                    <option value="Guinean">Guinean</option>
                                    <option value="Guyanese">Guyanese</option>
                                    <option value="Haitian">Haitian</option>
                                    <option value="Herzegovinian">Herzegovinian</option>
                                    <option value="Honduran">Honduran</option>
                                    <option value="Hungarian">Hungarian</option>
                                    <option value="Icelander">Icelander</option>
                                    <option value="Indian">Indian</option>
                                    <option value="Indonesian">Indonesian</option>
                                    <option value="Iranian">Iranian</option>
                                    <option value="Iraqi">Iraqi</option>
                                    <option value="Irish">Irish</option>
                                    <option value="Israeli">Israeli</option>
                                    <option value="Italian">Italian</option>
                                    <option value="Ivorian">Ivorian</option>
                                    <option value="Jamaican">Jamaican</option>
                                    <option value="Japanese">Japanese</option>
                                    <option value="Jordanian">Jordanian</option>
                                    <option value="Kazakhstani">Kazakhstani</option>
                                    <option value="Kenyan">Kenyan</option>
                                    <option value="Kittian and Nevisian">Kittian and Nevisian</option>
                                    <option value="Kuwaiti">Kuwaiti</option>
                                    <option value="Kyrgyz">Kyrgyz</option>
                                    <option value="Laotian">Laotian</option>
                                    <option value="Latvian">Latvian</option>
                                    <option value="Lebanese">Lebanese</option>
                                    <option value="Liberian">Liberian</option>
                                    <option value="Libyan">Libyan</option>
                                    <option value="Liechtensteiner">Liechtensteiner</option>
                                    <option value="Lithuanian">Lithuanian</option>
                                    <option value="Luxembourger">Luxembourger</option>
                                    <option value="Macedonian">Macedonian</option>
                                    <option value="Malagasy">Malagasy</option>
                                    <option value="Malawian">Malawian</option>
                                    <option value="Malaysian">Malaysian</option>
                                    <option value="Maldivan">Maldivan</option>
                                    <option value="Malian">Malian</option>
                                    <option value="Maltese">Maltese</option>
                                    <option value="Marshallese">Marshallese</option>
                                    <option value="Mauritanian">Mauritanian</option>
                                    <option value="Mauritian">Mauritian</option>
                                    <option value="Mexican">Mexican</option>
                                    <option value="Micronesian">Micronesian</option>
                                    <option value="Moldovan">Moldovan</option>
                                    <option value="Monacan">Monacan</option>
                                    <option value="Mongolian">Mongolian</option>
                                    <option value="Moroccan">Moroccan</option>
                                    <option value="Mosotho">Mosotho</option>
                                    <option value="Motswana">Motswana</option>
                                    <option value="Mozambican">Mozambican</option>
                                    <option value="Namibian">Namibian</option>
                                    <option value="Nauruan">Nauruan</option>
                                    <option value="Nepalese">Nepalese</option>
                                    <option value="New Zealander">New Zealander</option>
                                    <option value="Ni-Vanuatu">Ni-Vanuatu</option>
                                    <option value="Nicaraguan">Nicaraguan</option>
                                    <option value="Nigerien">Nigerien</option>
                                    <option value="North Korean">North Korean</option>
                                    <option value="Northern Irish">Northern Irish</option>
                                    <option value="Norwegian">Norwegian</option>
                                    <option value="Omani">Omani</option>
                                    <option value="Pakistani">Pakistani</option>
                                    <option value="Palauan">Palauan</option>
                                    <option value="Panamanian">Panamanian</option>
                                    <option value="Papua New Guinean">Papua New Guinean</option>
                                    <option value="Paraguayan">Paraguayan</option>
                                    <option value="Peruvian">Peruvian</option>
                                    <option value="Polish">Polish</option>
                                    <option value="Portuguese">Portuguese</option>
                                    <option value="Qatari">Qatari</option>
                                    <option value="Romanian">Romanian</option>
                                    <option value="Russian">Russian</option>
                                    <option value="Rwandan">Rwandan</option>
                                    <option value="Saint Lucian">Saint Lucian</option>
                                    <option value="Salvadoran">Salvadoran</option>
                                    <option value="Samoan">Samoan</option>
                                    <option value="San Marinese">San Marinese</option>
                                    <option value="Sao Tomean">Sao Tomean</option>
                                    <option value="Saudi">Saudi</option>
                                    <option value="Scottish">Scottish</option>
                                    <option value="Senegalese">Senegalese</option>
                                    <option value="Serbian">Serbian</option>
                                    <option value="Seychellois">Seychellois</option>
                                    <option value="Sierra Leonean">Sierra Leonean</option>
                                    <option value="Singaporean">Singaporean</option>
                                    <option value="Slovakian">Slovakian</option>
                                    <option value="Slovenian">Slovenian</option>
                                    <option value="Solomon Islander">Solomon Islander</option>
                                    <option value="Somali">Somali</option>
                                    <option value="South African">South African</option>
                                    <option value="South Korean">South Korean</option>
                                    <option value="Spanish">Spanish</option>
                                    <option value="Sri Lankan">Sri Lankan</option>
                                    <option value="Sudanese">Sudanese</option>
                                    <option value="Surinamer">Surinamer</option>
                                    <option value="Swazi">Swazi</option>
                                    <option value="Swedish">Swedish</option>
                                    <option value="Swiss">Swiss</option>
                                    <option value="Syrian">Syrian</option>
                                    <option value="Taiwanese">Taiwanese</option>
                                    <option value="Tajik">Tajik</option>
                                    <option value="Tanzanian">Tanzanian</option>
                                    <option value="Thai">Thai</option>
                                    <option value="Togolese">Togolese</option>
                                    <option value="Tongan">Tongan</option>
                                    <option value="Trinidadian or Tobagonian">Trinidadian or Tobagonian</option>
                                    <option value="Tunisian">Tunisian</option>
                                    <option value="Turkish">Turkish</option>
                                    <option value="Tuvaluan">Tuvaluan</option>
                                    <option value="Ugandan">Ugandan</option>
                                    <option value="Ukrainian">Ukrainian</option>
                                    <option value="Uruguayan">Uruguayan</option>
                                    <option value="Uzbekistani">Uzbekistani</option>
                                    <option value="Venezuelan">Venezuelan</option>
                                    <option value="Vietnamese">Vietnamese</option>
                                    <option value="Welsh">Welsh</option>
                                    <option value="Yemenite">Yemenite</option>
                                    <option value="Zambian">Zambian</option>
                                    <option value="Zimbabwean">Zimbabwean</option>
                                </datalist>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="religion" title="Religion" placeholder="Religion" id="religion" class="form-control religion inputField input-md  "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="hscGroup" title="HSC Group" placeholder="HSC Group" id="hscGroup" class="form-control hscGroup inputField input-md "/>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="number" required="required" name="expObtHSCMark" title="Expected/Obtained Mark" placeholder="Expected/Obtained Mark" id="expObtHSCMark" class="form-control expObtHSCMark inputField input-md "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="bloodGroup" title="Blood Group" list="bloodGroupList" placeholder="Blood Group" id="bloodGroup" class="form-control bloodGroup inputField input-md "/>
                                <datalist id="bloodGroupList">
                                    <c:forEach var="bloodGroup" items="${bloodGroupList}" >
                                        <option value="${bloodGroup}" label="${bloodGroup.description}">
                                    </c:forEach>
                                </datalist>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="text" required="required" name="expectedDept" list="deptList" title="Expected Department" placeholder="Expected Department" id="expectedDept" class="form-control expectedDept inputField input-md "/>
                                <datalist id="deptList">
                                    <c:forEach var="dept" items="${deptList}" >
                                        <option value="${dept}" label="${dept.description}">
                                    </c:forEach>
                                </datalist>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="password" required="required" title="Password" placeholder="Password" id="password" class="form-control password inputField input-md "/>
                                <input type="hidden" name="password" id="originalPassword"/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="password" required="required" title="Password" placeholder="Confirm Password" id="cPassword" class="form-control password inputField input-md "/>
                            </div>
                        </div>
                        <div class="form-group  col-sm-12 col-xs-12">
                            <div class="col-sm-6 col-xs-6">
                                <input type="email" name="email" title="Email" placeholder="Email" id="email" class="form-control email inputField input-md "/>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <input type="tel" required="required" name="phNumber" title="Phone Number" placeholder="Phone Number" id="phNumber" class="form-control phNumber inputField input-md "/>
                            </div>
                        </div>
                        <c:if test="${not empty errorMsgRegister}">
                            <div class="errorMessage" align="center">
                                <c:out value="${error}" />
                            </div>
                        </c:if>
                    </div>
                    <div class="modal-footer form-group" style="border: 0px solid black; margin-top:-3.5%;">
                        <div class="btn-group" style="margin-bottom:-1.5%;">
                            <input type="submit" value="Register" id="registerBtn" class="registerBtn button input-md btn btn-danger" style="margin-bottom: 15px;"/>
                            <input type="reset" value="Reset" id="resetBtn" class="reset button input-md btn btn-danger"/>
                        </div>
                        <p>Already a member? <a href="#" id="userLoginLink">Login</a></p>
                     </div>
                </form:form>
            </div>
        </div>
    </div>
    <script src="<c:url value="${contextPath}/scripts/register.js" />" type="text/javascript"></script>