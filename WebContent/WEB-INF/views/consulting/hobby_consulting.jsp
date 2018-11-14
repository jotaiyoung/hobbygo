<%@page import="org.sist3.Bean.ConsultingBean"%>
<%@page import="java.io.Console"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
     <jsp:include page="hobby_consulting_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script>
    $(document).ready(function () {
        $('#sel1').change(function(){
            $('#HCP1').text($("#sel1 option:selected").text());
        })
        $('#sel2').change(function(){
            $('#HCP2').text($("#sel2 option:selected").text());
        })
        $('#sel3').change(function(){
            $('#HCP3').text($("#sel3 option:selected").text());
        })
        
	   /* $("form[name='frm']").on("submit",function() {
		   if ($('#sel1').val()=="0") {
			   alert("연령대를 골라주세요!");
			   return;
		   }
		   if ($('#sel2').val()=="0") {
			   alert("성별을 골라주세요!");
			   return;
		   }
		   if ($('#sel3').val()=="0") {
			   alert("직업을 골라주세요!");
			   return;
		   }
			this.action = "HobbyConsultingSearch.Consult";
			this.method="POST";
			this.submit();
	})  */
       /*  $("button[name=HCRbtn]").click(function() {
        	if ($('#sel1').val()=="0") {
 			   alert("연령대를 골라주세요!");
 			   return;
 		   }
 		   if ($('#sel2').val()=="0") {
 			   alert("성별을 골라주세요!");
 			   return;
 		   }
 		   if ($('#sel3').val()=="0") {
 			   alert("직업을 골라주세요!");
 			   return;
 		   }
        }) */
	
})

</script>


<body>
   
    <!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width: 100%;">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
        <div id="navbar-up-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></img></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
        

            <div id="HC_page" class="well">
                <h2>취미를 찾아 드립니다!</h2>

                <div class="HCWrap">

                    <div class="HC-1">
                        <div class="HCImg"><img src="images/consulting_img/undong.png"></div>
                        <div class="HCTitle">체육</div>
                        <div class="HCCont">
                            <p>땀흘리는 즐거움</p>
                        </div>
                    </div>
                    <div class="HC-2">
                        <div class="HCImg"><img src="images/consulting_img/music.png"></div>
                        <div class="HCTitle">음악</div>
                        <div class="HCCont">
                            <p>분위기를 만드는 사람들</p>
                        </div>
                    </div>
                    <div class="HC-3">
                        <div class="HCImg"><img src="images/consulting_img/art.png"></div>
                        <div class="HCTitle">미술</div>
                        <div class="HCCont">
                            <p>세상을 아름답게!</p>
                        </div>
                    </div>
                    <div class="HC-4">
                        <div class="HCImg"><img src="images/consulting_img/camera.png"></div>
                        <div class="HCTitle">사진</div>
                        <div class="HCCont">
                            <p>순간의 기록</p>
                        </div>
                    </div>
                    <div class="HC-5">
                        <div class="HCImg"><img src="images/consulting_img/flower.png"></div>
                        <div class="HCTitle">꽃꽃이</div>
                        <div class="HCCont">
                            <p>꽃을 더욱 아름답게</p>
                        </div>
                    </div>
                    <div class="HC-6">
                        <div class="HCImg"><img src="images/consulting_img/game.png"></div>
                        <div class="HCTitle">게임</div>
                        <div class="HCCont">
                            <p>가볍게 게임한판?</p>
                        </div>
                    </div>
                    <div class="HC-7">
                        <div class="HCImg"><img src="images/consulting_img/book.png"></div>
                        <div class="HCTitle">학문</div>
                        <div class="HCCont">
                            <p>알면 알 수록!</p>
                        </div>
                    </div>
                    <div class="HC-8">
                        <div class="HCImg"><img src="images/consulting_img/cook.png"></div>
                        <div class="HCTitle">요리</div>
                        <div class="HCCont">
                            <p>언제까지 시켜먹을텐가?</p>
                        </div>
                    </div>
                    <div class="HC-9">
                        <div class="HCImg"><img src="images/consulting_img/magic.png"></div>
                        <div class="HCTitle">마술</div>
                        <div class="HCCont">
                            <p>친구들을 놀래켜보자!</p>
                        </div>
                    </div>
                    <div class="HC-10">
                        <div class="HCImg"><img src="images/consulting_img/dance.png"></div>
                        <div class="HCTitle">댄스</div>
                        <div class="HCCont">
                            <p>흔들어볼까?</p>
                        </div>
                    </div>
                    <div class="HC-11">
                        <div class="HCImg"><img src="images/consulting_img/qulit.png"></div>
                        <div class="HCTitle">퀼트</div>
                        <div class="HCCont">
                            <p>퀼트가 뭐죠? 뜨는건가?</p>
                        </div>
                    </div>
                    <div class="HC-12">
                        <div class="HCImg"><img src="images/consulting_img/etc.png"></div>
                        <div class="HCTitle">기타</div>
                        <div class="HCCont">
                            <p>그 외에도</p>
                        </div>
                    </div>

                </div>
            </div>

    <br><br>

            <div class="well">

                <div class="HCstat">
                    <h2>다른 사람들은 무슨 취미를 가지고 있을까요?</h2>
                    <form name="frm" method="post" action="HobbyConsultingSearch.Consult">
                        <div class="form-group" id="stats">
                            <div id="ages">
                                <label for="sel1" class="stats_left">나이</label>
                                <select class="form-control" id="sel1" name="age">
                                	<option value="0">나이</option>
                                    <option value="10">10대</option>
                                    <option value="20">20대</option>
                                    <option value="30">30대</option>
                                    <option value="40">40대</option>
                                    <option value="50">50대</option>
                                    <option value="60">60대</option>
                                    <option value="70">70대</option>
                                    <option value="80">80대</option>
                                </select>
                            </div>

                            <div id="genders">
                                <label for="sel2" class="stats_left">성별</label>
                                <select class="form-control" id="sel2" name="gender">
                                	<option value="0">성별</option>
                                    <option value="M">남</option>
                                    <option value="F">여</option>
                                </select>
                            </div>

                            <div id="jobs">
                                <label for="sel3" class="stats_left">직업</label>
                                <select class="form-control" id="sel3" name="job">
                               		<option value="0">직업</option>
                                    <option value="J001">사무직</option>
                                    <option value="J002">주부</option>
                                    <option value="J003">서비스직</option>
                                    <option value="J004">IT계열</option>
                                    <option value="J005">학생</option>
                                    <option value="J006">금융권</option>
                                    <option value="J007">선생님, 강사</option>
                                    <option value="J008">무직</option>
                                </select>
                            </div>
                            <br>
                          <!--  <button class="btn" id="HCRbtn" name="HCRbtn">결과보기</button> -->
                          <input type="button" value="결과보기" class="btn" id="HCRbtn" name="HCRbtn" onclick="fn_action()">
                          
                          <script>
								function fn_action() {
								    
									var f = document.frm;
									if ($('#sel1').val()=="0") {
										   alert("연령대를 골라주세요!");
										   return;
									   }
									   if ($('#sel2').val()=="0") {
										   alert("성별을 골라주세요!");
										   return;
									   }
									   if ($('#sel3').val()=="0") {
										   alert("직업을 골라주세요!");
										   return;
									   }f.submit();
								}
								</script>
                        </div>
                    </form>
                </div>

                <div class="HCresult">
                    <h2>취미통계</h2><br>
                    <h3>
                         <%
						if (session.getAttribute("Search") != null) {
							if(request.getAttribute("consultingResult")!=null) {
							ArrayList<ConsultingBean> list = (ArrayList<ConsultingBean>) request.getAttribute("consultingResult");
						
								for(int i=0; i<1; i++) {
									ConsultingBean consulting = list.get(i);
							%>
								<span id="HCP1"><%=consulting.getCon_s_age() %></span>,
								<%
									if (consulting.getCon_s_gender().equals("F")) {
										%>
										<span id="HCP2">여성</span>,
										<%
									} else {
										%>
										<span id="HCP2">남성</span>,
										<%
									}
									if (consulting.getCon_s_job().equals("J001")) {
										%>
										<span id="HCP3">사무직</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J002")) {
										%>
										<span id="HCP3">주부</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J003")) {
										%>
										<span id="HCP3">서비스직</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J004")) {
										%>
										<span id="HCP3">IT계열</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J005")) {
										%>
										<span id="HCP3">학생</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J006")) {
										%>
										<span id="HCP3">금융권</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J007")) {
										%>
										<span id="HCP3">선생님, 강사</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									} else if (consulting.getCon_s_job().equals("J008")) {
										%>
										<span id="HCP3">무직</span> 이/가 가장 많이 하고 있는 취미는?
										<%
									}
								}
							}
						} else {
							%>
		                    <span id="HCP1">A</span>,<span id="HCP2">B</span>,<span id="HCP3">C</span> 이/가 가장 많이 하고 있는 취미는?</h3>
		                      <%
						}
                         %>
                         <div id="HCRWrap">
                         <%
						if (session.getAttribute("Search") != null) {
							if(request.getAttribute("consultingResult")!=null) {
							ArrayList<ConsultingBean> list = (ArrayList<ConsultingBean>) request.getAttribute("consultingResult");
						%>
						<script>
						alert("취미 검색 완료!");
						</script>
						<%
								for(int i=0; i<list.size(); i++) {
									ConsultingBean consulting = list.get(i);
							
									if (consulting.getCon_c_code().equals("C001")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">운동 - 축구</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C002")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">운동 - 야구</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C003")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">운동 - 자전거</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C011")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">기타</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C012")) {
										%>
										<div class="HCRContents">
										<div class="HCRTitle">피아노</div></div>
										<%
									} else if (consulting.getCon_c_code().equals("C013")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">보컬</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C021")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">수채화</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C022")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">만화</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C023")) {
										%>
										 <div class="HCRContents">
										 <div class="HCRTitle">드로잉</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C031")) {
										%>
										<div class="HCRContents">
										<div class="HCRTitle">사진</div></div>
										<%
									} else if (consulting.getCon_c_code().equals("C041")) {
										%>
										<div class="HCRContents">
										<div class="HCRTitle">꽃꽂이</div></div>
										<%
									} else if (consulting.getCon_c_code().equals("C051")) {
										%>
										<div class="HCRContents">
										<div class="HCRTitle">게임 - PC</div></div>
										<%
									} else if (consulting.getCon_c_code().equals("C052")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">게임 - CONSOLE</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C061")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">문학</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C062")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">이학</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C063")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">공학</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C064")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">예술학</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C071")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">요리</div>
										</div>
										<%
									} else if (consulting.getCon_c_code().equals("C081")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">마술</div>
										</div>
										<%
									}  else if (consulting.getCon_c_code().equals("C091")) {
										%>
										 <div class="HCRContents">
										<div class="HCRTitle">퀼트 - 자수</div>
										</div>
										<%
									}
								} //end of if
							} // end of for
							  session.removeAttribute("Search");
									} // end of if
						else {
					%>
                        
                            <div class="HCRContents">
                                
                            </div>

                            <div class="HCRContents">
                               
                            </div>

                            <div class="HCRContents">
                               
                            </div>
                        </div>
                </div>
<%} %>
            </div>
            	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/> 
  </div>

</body>
</html>

    