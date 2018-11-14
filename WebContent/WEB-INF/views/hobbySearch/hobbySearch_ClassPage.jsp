<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="org.sist3.Bean.ClassBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="hobbySearch_head.jsp"></jsp:include>
</head>
<style>
#footer{
width :940px;
}
</style>
<script src="js/Cross.js"></script>
<script>
	$(document).ready(function() {
		$("button[name=cartBtn]").click(function() {
	        var cartOk = confirm("해당강좌를 장바구니에 담으시겠습니까?");
	        if (cartOk==true) {
	            location.href="학생마이페이지의 cart주소를 써주세요!";
	        }
	    })
	    $("button[name=regBtn]").click(function() {
	        var regOk = confirm("해당강좌를 신청하시겠습니까?");
	    });
		
		function fn_revise() {
	        location.href="classpage_revise.myTeacher";
	    }
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
	    <div id="wrapper" class="container">
	        <div id="navbar-up-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"></jsp:include>
	        </div>
	        <div id="header">
	            <div id="logo">
	                <h1><a href="#"><img src="images/index_img/logo.png"></a></h1>
	            </div>
	        </div>
	        <div id="navbar-menu-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"></jsp:include>
	        </div>
	        
	            <div id="classpageWrap">
        <div class="well">
<%
if(request.getAttribute("classInfo") != null){
	ClassBean cbean = (ClassBean)request.getAttribute("classInfo");
	String teacherName = (String)request.getAttribute("teacherName");

%>
            <div id="classpageTitle">
                <div id="classTitleImg">
                    
                    <a href=""><img src="<%=request.getContextPath()+"/fileSave/lecture/"+cbean.getC_img() %>" style="width : 500px;" /></a>
                    
                </div>
                <div id="classTitleIndex">
                    <table class="table table-condensed" id="classTitleIndexTable">
                        <tr>
                            <th colspan="2" style="text-align: center;font-size: 15pt"><%=cbean.getC_name() %></th>
                        </tr>
                        <tr>
                            <Th>강사명</Th><td><a href="teacherPage.search"><%=teacherName %>선생님</a></td>
                        </tr>
                        <tr>
                            <Th>대분류</Th><td><%=cbean.getC_codeN() %></td>
                        </tr>
                        <tr>
                            <Th>소분류</Th><td><%=cbean.getC_codeD() %></td>
                        </tr>
                        <tr>
                            <Th>강좌지역</Th><td><%=cbean.getC_area() %>/<%=cbean.getC_areaD() %></td>
                        </tr>
                        <tr>
                            <Th>수업료</Th><td><%=cbean.getC_fee() %></td>
                        </tr>
                        <tr>
                            <Th>수강인원</Th><td><%=cbean.getC_part_num() %></td>
                        </tr>
                        <tr>
                            <Th>주당횟수</Th><td><%=cbean.getC_times() %></td>
                        </tr>
                        <tr>
                            <Th>한줄소개</Th><td><%=cbean.getC_intro_title() %></td>
                        </tr>
                    </table>
<%
String tid=null;
	if(session.getAttribute("t_member") != null){
		TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
		tid = t_member.getT_id();


%>	
			<div id="BtnDiv">
                         <a href="classpage_revise.myTeacher?c_no=<%=cbean.getC_no()%>"><button class="btn btn-primary btn-block" name="reviseBtn"><span class="glyphicon glyphicon-pencil"> </span> 수정하기</button></a>
            </div>

<% 
	} else {
%>
			<div id="BtnDiv">
                        <button class="btn btn-primary btn-block" name="regBtn"><span class="glyphicon glyphicon-pencil"> </span> 신청하기</button>
                        <button class="btn btn-primary btn-block" name="cartBtn"><span class="glyphicon glyphicon-shopping-cart"></span> 장바구니</button>
             </div>

<%
		
	}
		
%>
                    
                </div>
            </div>
        </div>
        <div class="well">
            <div id="classpageCurri">
                <h2>강좌소개</h2>
                <div id="classpageCurriCon">
                <br>
                    <p><%=cbean.getC_intro_content() %>
                    </p>
                </div>
            </div>
        <div id="BtnDiv2">
        <a href='management.myTeacher?tid=<%=tid %>'><button class="btn btn-block">강좌목록보기</button></a>
           <hr>
            </div>
        </div>
<%
} //end of if
%>        
        </div>
	    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
        
</div>
</body>
</html>