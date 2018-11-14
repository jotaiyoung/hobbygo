<%@page import="org.sist3.Bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="myStudent_head.jsp" flush="false"></jsp:include> 
    <link href="css/MyPage_Student.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<style>
/*a태그*/
    a img {
        border: none;
    }
    a:link {
	 color: white;
	 text-decoration: none;
    }
    a:visited { 
	color: white;
  	text-decoration: none;
    }
    a:hover { 
	color: black;
	text-decoration: none;
    }
    a:active{ 
	color: white;
	text-decoration: none;
    }
</style>
<script>
<%	
if(request.getAttribute("UserSeccess")!=null){
	request.removeAttribute("UserSeccess"); // 이걸 해줘야 창이 뜸
	
%>
alert('정보를 수정했습니다.');
<%	
}
%>
</script>
<script src="js/Cross.js"></script>
<body>
	    <div id="wrapper" class="container"  style="width:100%;">
	        <div id="navbar-up-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"></jsp:include>
	        </div>
	        <div id="header">
	            <div id="logo">
	                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
	            </div>
	        </div>
	        <div id="navbar-menu-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"></jsp:include>
	        </div>
	        <div id="Mypage_page" class="well">
	        <%
if(session.getAttribute("s_member")!=null){
	StudentBean s_member = (StudentBean)session.getAttribute("s_member");
%>
	<h3><%=s_member.getS_name() %> 님, 환영합니다.</h3>
<%
}
%>
            
                <div class="MypageWrap">
                    <div class="Mypage1">
                        <div class="MypageImg"><img src="images/mypageStudent_img/myinfomod.png"></div>
                        <a href="revise.myStudent"><div class="MypageTitle">내정보수정</div></a>
                    </div>
                    <div class="Mypage2">
                        <div class="MypageImg"><img src="images/mypageStudent_img/cart.png"> </div>
                        <a href="cart.myStudent"><div class="MypageTitle">장바구니</div></a>
                    </div>
                    <div class="Mypage3">
                        <div class="MypageImg"><img src="images/mypageStudent_img/email.png"> </div>
                        <a href="mail.mail"><div class="MypageTitle">쪽지함</div></a>
                    </div>
                    <div class="Mypage4">
                        <div class="MypageImg"><img src="images/mypageStudent_img/sugang.png"> </div>
                        <a href="register.myStudent"><div class="MypageTitle">수강신청현황</div></a>
                    </div>
                </div>
            </div>
	    		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
  </div>
</body>
</html>