<%@page import="org.sist3.Bean.TeacherBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
 <jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
 <link href="css/mypage_teacher.css" rel="stylesheet" type="text/css" media="all" />
 <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>

<body>
    
    <div id="wrapper" class="container" style="width:100%;">
        <div id="navbar-up-specialLoad">        
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
 
        


            <div id="Mypage_page" class="well" >
<%
String tid=null;

if(session.getAttribute("t_member")!=null){
	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
	tid=t_member.getT_id();	
%>
	<h3><%=t_member.getT_name() %> 선생님, 환영합니다.</h3>
	
<%
}
%>
                <div class="MypageWrap">
                    <div class="Mypage1">
                        <div class="MypageImg"><img src="images/mypage_teacher_img/myinfomod.png"></div>
                        <a href="revise.myTeacher"><div class="MypageTitle">내정보수정</div></a>
                    </div>
                    <div class="Mypage2">
                        <div class="MypageImg"><img src="images/mypage_teacher_img/teacher.png"> </div>
                        <a href="profile.myTeacher"><div class="MypageTitle">강사페이지</div></a>
                    </div>
                    <div class="Mypage3">
                        <div class="MypageImg"><img src="images/mypage_teacher_img/email.png"> </div>
                        <a href="mail.mail"><div class="MypageTitle">쪽지함</div></a>
                    </div>
                    <div class="Mypage4">
                        <div class="MypageImg"><img src="images/mypage_teacher_img/lectureMng.png"> </div>
                        <a href="management.myTeacher?tid=<%=tid %>"><div class="MypageTitle">강좌관리</div></a>
                    </div>
                </div>
            </div>
  		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/> 
  </div>

</body>
</html>
    