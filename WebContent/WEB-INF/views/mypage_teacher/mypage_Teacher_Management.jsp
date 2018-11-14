<%@page import="java.util.ArrayList"%>
<%@page import="org.sist3.Bean.ClassBean"%>
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
<script>
    $(document).ready(function(){
        $('#manage_btn1').click(function(){
            $('#management_ing').fadeIn();
            $('#management_over').hide();
        })
        $('#manage_btn2').click(function(){
            $('#management_over').fadeIn();
            $('#management_ing').hide();
        })
    })
</script>
<body>
<%-- <%
if(session.getAttribute("t_member")!=null){
	T_MemberVo t_member = (T_MemberVo)session.getAttribute("t_member");
		String tid = t_member.getT_id();
}
%>    --%> 
    
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
        
	<!-- 전체묶음 -->
	<div class="container" id="container">
        <h2 id="manage_title">강좌관리</h2>
		<!-- 탭 -->	
		<ul class="nav nav-tabs" id="nav-tab-ul">
			<li id="manage_btn1">현재강의</li>
			<li id="manage_btn2">지난강의</li>
		</ul>
		<!-- 박스 -->
		<div id="management_ing">

			<!-- 테이블 -->
			<div class="table" id="management_ing_table">
				<table class="table table-condensed">
						<tr>
                            <th>No</th>
                            <th>대분류</th>
                            <th>위치</th>
                            <th>강의제목</th>
                            <th>강의소개</th>
                            <th>주당횟수</th>
                            <th>강좌상세보기</th>                            
						</tr>
<%
String tid=null;
if(request.getAttribute("cbean_ingList")!=null){
	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
	tid=t_member.getT_id();	
	ArrayList<ClassBean> cbeaninglist = (ArrayList<ClassBean>)request.getAttribute("cbean_ingList");
	for(int i=0; i<cbeaninglist.size(); i++){
		ClassBean cb = cbeaninglist.get(i);
		if(t_member.getT_id().equals(cb.getC_tid())){
			
		
%>		

						<tr>
                            <td><%=i+1 %></td>
                            <td><%=cb.getC_codeN() %></td>
                            <td><%=cb.getC_area() %></td>
                            <td><%=cb.getC_name() %></td>
                            <td><%=cb.getC_intro_title() %></td>
                            <td><%=cb.getC_times() %></td>
                            <td><a href="classPage.search?c_no=<%=cb.getC_no()%>&c_tid=<%=cb.getC_tid()%>">바로가기</a></td>
						</tr>
<%
		}
	} //end of for
} else {
%>
						
                        <tr>
                            <th colspan="8">진행중인 강좌가 없습니다.</th>
                        </tr>
<%
} //end of if
%>
				</table>
			</div>
		</div>
        <div id="management_over">
            <!-- 테이블 -->
            <div class="table" id="management_over_table">
                <table class="table table-condensed">
                    <tr>
                        <th>No</th>
                        <th>대분류</th>
                        <th>위치</th>
                        <th>강의제목</th>
                        <th>강의소개</th>
                        <th>주당횟수</th>
                        <th>강좌상세보기</th>
                    </tr>                    
<%
if(request.getAttribute("cbean_overList")!=null){
	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
	ArrayList<ClassBean> cbeanoverlist = (ArrayList<ClassBean>)request.getAttribute("cbean_overList");
	for(int i=0; i<cbeanoverlist.size(); i++){
		ClassBean cbo = cbeanoverlist.get(i);
		if(t_member.getT_id().equals(cbo.getC_tid())){
%>
                    <tr>
                        <td><%=i+1%></td>
                        <td><%=cbo.getC_codeN() %></td>
                        <td><%=cbo.getC_area() %></td>
                        <td><%=cbo.getC_name() %></td>
                        <td><%=cbo.getC_intro_title() %></td>
                        <td><%=cbo.getC_times() %></td>
                        <td><a href="classPage.search?c_no=<%=cbo.getC_no()%>&c_tid=<%=cbo.getC_tid()%>">바로가기</a></td>
                    </tr>
<%
		}
	}//end of for
} else {
%>
                    <tr>
                            <th colspan="8">종료한 강좌가 없습니다.</th>
                    </tr>
<%
} //end of if
%>
                </table>
            </div>
        </div>
		<!-- 버튼 -->
        <a href="create_classpage.myTeacher?tid=<%=tid %>"><button class="btn">강좌 개설</button></a>
	</div>
	
	
    <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
    </div>
    </body>
</html>

