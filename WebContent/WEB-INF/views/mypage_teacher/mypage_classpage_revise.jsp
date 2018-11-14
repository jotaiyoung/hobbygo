<%@page import="org.sist3.Bean.ClassBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <jsp:include page="Mypage_Teacher_head.jsp" flush="false"></jsp:include> 
    <link href="css/mypage_classpage_revise.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script src="js/classArea.js"></script>

<script>
    $(document).ready(function() {
	    var popup_cart;
	    var popup_apply;
	    function popup_cart() {
	        popup_cart = window.open("addcart.html", "popup_cart", "top=500,left=700,width=250,height=120");
	    }
	    function popup_apply() {
	        popup_apply = window.open("applyclass.html", "popup_apply", "top=500,left=700,width=250,height=120");
	    }
    })
</script>

<body>
   
    <!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width:100%;">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
        <div id="navbar-up-specialLoad">
        		<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
<%
if(request.getAttribute("classInfo") != null){
	ClassBean cbean = (ClassBean)request.getAttribute("classInfo");

%>
    <div id="classpageWrap">
    
    <form name="createLecutre" method="post" action="classPageReviseOk.myTeacher">
    <input type="hidden" name="c_no" value="<%=cbean.getC_no() %>" />
    <input type="hidden" name="c_tid" value="<%=cbean.getC_tid() %>" />
        <div class="well" style="height:420px;">
            <div id="classpageTitle">
                <div id="classTitleImg">
                    <img src="<%=request.getContextPath()+"/fileSave/lecture/"+cbean.getC_img() %>" style="width : 500px;" />
                </div>
                <div id="classTitleIndex">
                    <table class="table table-condensed" id="classTitleIndexTable">
                        <tr>
                            <th colspan="2" style="text-align: center;font-size: 15pt"><%=cbean.getC_name()%></th>
                        </tr>
                        <tr>
                            <Th>대분류</Th><td><%=cbean.getC_codeN() %></td>
                        </tr>
                        <tr>
                            <Th>소분류</Th><td><%=cbean.getC_codeD() %></td>
                        </tr>
                        <tr>
                            <Th>강좌지역</Th><td>
                                                    <select id="area1" name='c_area' onchange="change(this.selectedIndex);"  class="form-control input-md">
                                                        <option value='전체'>전체</option>
                                                        <option value='서울'>서울</option>
                                                        <option value='부산'>부산</option>
                                                        <option value='대구'>대구</option>
                                                        <option value='인천'>인천</option>
                                                        <option value='광주'>광주</option>
                                                        <option value='대전'>대전</option>
                                                        <option value='울산'>울산</option>
                                                        <option value='경기'>경기</option>
                                                        <option value='강원'>강원</option>
                                                        <option value='충북'>충북</option>
                                                        <option value='충남'>충남</option>
                                                        <option value='전북'>전북</option>
                                                        <option value='전남'>전남</option>
                                                        <option value='경북'>경북</option>
                                                        <option value='경남'>경남</option>
                                                        <option value='제주'>제주</option>
                                                    </select>
                                                    <select id="area2" name='c_areaD'  class="form-control input-md">
                                                        <option value='전지역'>전지역</option>
                                                    </select>
                                                </td>
                        </tr>
                        <tr>
                            <Th>수업료</Th><td>
                            <select id="pay" name="c_fee" class="form-control input-md">
                                                        <option>재능기부</option>
                                                        <option>10,000</option>                                                        
                                                        <option>20,000</option>
                                                        <option>30,000</option>
                                                        <option>40,000</option>
                                                        <option>50,000</option>
                                                        <option>60,000</option>
                                                        <option>70,000</option>
                                                        <option>80,000</option>
                                                        <option>90,000</option>
                                                        <option>상담후결정</option>
                                                    </select>                          
                            </td>
                        </tr>
                        <tr>
                            <Th>수강인원</Th><td><select id="studentNum" name="c_part_num" class="form-control input-md">
                                                        <option>1명</option>
                                                        <option>2명</option>
                                                        <option>3명</option>
                                                        <option>4명</option>
                                                        <option>5명</option>
                                                        <option>6명</option>
                                                        <option>7명</option>
                                                        <option>8명</option>
                                                        <option>9명</option>
                                                        <option>10명 이상</option>
                                                    </select></td>
                        </tr>
                        <tr>
                            <Th>주당횟수</Th><td>                       <select id="weekCnt" name="c_times" class="form-control input-md">
                                                        <option>협의가능</option>
                                                        <option>1회</option>
                                                        <option>2회</option>
                                                        <option>3회</option>
                                                        <option>4회</option>
                                                        <option>5회</option>
                                                        <option>6회</option>
                                                        <option>7회</option>
                                                    </select></td>
                        </tr>                         
                        <tr>
                            <Th>한줄소개</Th><td><input class="form-control input-sm" id="inputsm" type="text" name="c_intro_title"
                            value="<%=cbean.getC_intro_title() %>"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="well" style="height:450px;">
            <div id="classpageCurri">
                <h2 style="text-align: center;">강좌소개</h2><br>
                <div id="classpageCurriCon">
                    <p><textarea name="c_intro_content" cols="130" rows="10" style="width:100%;"><%=cbean.getC_intro_content() %></textarea></p>
                     <p>강의진행<select id="c_ing" name="c_ing" class="form-control input-md">
                                                        <option>Y</option>
                                                        <option>N</option>                                         
                              </select></p>
                </div>
            </div>
        <div id="BtnDiv2">        
        <button id="modify_class" class="btn btn-default" style="position: relative; top: 20px;">저장하기</button>
            </div>
        </div>
        </form>
<%
} //end of if
%>  
        
        </div>
        	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
    </div>
                
 
</body>
</html>
    





    