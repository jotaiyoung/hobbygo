<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.sist3.Bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="board_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<body>
	<jsp:include page="sideBar.jsp" flush="false"></jsp:include>
	    <div id="wrapper" class="container" style="width:100%">
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
	
		<div id="banner">
        </div>
        
            <div id="board_page" style="margin : 0 auto;">
                <div id="board_qna_wrap">
                <form name="frm" method="POST" action="QnaSuccess.board">
                    <table class="table">
                        <tr>
                            <th width="10%">카테고리</th>
                            <td width="90%">
                                <select name="category">
                                <option value="0">카테고리</option>
                                <option value="1">가입관련</option>
                                <option value="2">이용관련</option>
                                <option value="3">강좌개설</option>
                                <option value="4">기타</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>글쓴이</th>
                            <td><%
                            if (session.getAttribute("s_member")!=null) {
                            	StudentBean s_member = (StudentBean)session.getAttribute("s_member");%>
                            	<%=s_member.getS_name()%>
                            	<input type="hidden" name="who" value="student">
                            	<input type="hidden" name="name" value="<%=s_member.getS_name()%>">
                            	<%} 
                            	
                            	else if (session.getAttribute("t_member")!=null) {
                            	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");%>
                            	<%=t_member.getT_name()%>
                            	<input type="hidden" name="who" value="teacher">
                            	<input type="hidden" name="name" value="<%=t_member.getT_name()%>">
                            	<%}%>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><input type="text" class="form-control" name="qnatitle"></td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td><%
	                    		Calendar cal = Calendar.getInstance();
                            	SimpleDateFormat datetime = new SimpleDateFormat("yyyy-MM-dd");
                            	String now = datetime.format(cal.getTime());
                            %> <%=now%>
                            <input type="hidden" name="qnatime" value="<%=now%>"></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td><textarea rows="10" cols="120" name="qnacontents" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td><input type="password" name="password" class="form-control" style="font-family:Malgun Gothic"></td>
                        </tr>
                    </table>

                    <input type='button' class="btn" id="QnaBoardWriteBtn" value="작성하기" style="float:right; " name="successBtn" onclick="fn_action()">
                    
                    <script>
                    function fn_action() {
					    
						var f = document.frm;
						if ($("select[name=category]").val()=="0") {
							   alert("질문의 카테고리를 선택해주세요!");
							   return;
						}
						if ($("input[name=qnatitle]").val()=="") {
							   alert("게시글의 제목을 작성해주세요!");
							   return;
						}
						if ($("textarea[name=qnacontents").val()=="") {
							   alert("게시글의 내용을 작성해주세요!");
							   return;
						}
						if ($("input[name=password]").val()=="") {
							   alert("비밀번호를 입력해주세요!");
							   return;
						}
						var con = confirm("글을 게시하시겠습니까?");
						if (con==true) {
							f.submit();
						}
					}
                    </script>
                </div>
            </div>
	  <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>            
    </div>
</body>
</html>