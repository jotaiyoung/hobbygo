<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <jsp:include page="Join_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<style>
    .navbar-up-btn {
        margin-left: 840px;
    }

    .carousel-inner img {
        width: 1090px;
        height: 800px;
    }
    /*a태그*/
    a img {
        border: none;
    }
    a:link {
        color:white;
	 text-decoration: none;
    }
    a:visited { 
	color: black; 
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


<body>
  
    
    <!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width: 100%;">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
        <div id="navbar-up-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        
        <div id="header" >
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></img></a></h1>
                <!-- /HobbyGo_WebApplication_Tomcat7/WebContent/WEB-INF/join/Join_Select.jsp -->
                <!-- /HobbyGo_WebApplication_Tomcat7/WebContent/images/index_img/logo.png -->
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>


            <div id="memberJoin_page" class="well">
                <div id="memberJoinWrap">
                    <div id="memberLeft">
                        <div class="memberJoinImg"><img src="images/join_img/imgS.png"></div>
                        <a href="Student.join"><div class="memberJoinTitle">학생가입</div></a>
                        <div class="memberJoinCon">
                            <p>새로운 취미를 가지고 싶은 분</p>
                            <p>의미있는 여가시간을 보내고 싶은 분</p>
                            <p>새로운 만남을 추구하시는 분</p>
                        </div>
                    </div>
                    <div id="memberRight">
                        <div class="memberJoinImg"><img src="images/join_img/imgT.png"> </div>
                        <a href="Teacher.join"><div class="memberJoinTitle">강사가입</div></a>
                        <div class="memberJoinCon">
                            <p>나의 능력을 펼쳐보이고 싶은 분</p>
                            <p>나의 취미를 함께 즐길 사람을 찾는 분</p>
                            <p>새로운 만남을 추구하시는 분</p>
                        </div>
                    </div>
                </div>
            </div>
			    <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/> 
  </div>
</body>
</html>





