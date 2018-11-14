<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
	                <h1><a href="#"><img src="images/index_img/logo.png"></a></h1>
	            </div>
	        </div>
	        <div id="navbar-menu-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"></jsp:include>
	        </div>
		<div id="banner">
        </div>
        <div id="board_page" style="margin : 0 auto">
                <div id="board_qna_wrap">
	<form name="AdminForm" method="POST" action="QnaAdminReply.board?b_no=<%=request.getParameter("b_no")%>">
<%-- 	<input type="hidden" name="b_no" value="<%=request.getParameter("b_no")%>"> --%>
		<table class="table">
			<tr>
				<th width="20%">글쓴이</th>
				<td width="80%">관리자</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>
					<%
	                  Calendar cal = Calendar.getInstance();
                      SimpleDateFormat datetime = new SimpleDateFormat("yyyy-MM-dd");
                      String now = datetime.format(cal.getTime());
                    %> <%=now%> 
                    <input type="hidden" name="Admintime" value="<%=now%>">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="120" name="adminTextarea"></textarea></td>
			</tr>
		</table>
		<input type="button" name="replyOkBtn" class="btn" onclick="fn_check()" style="float:right;" value="답변 작성하기"/>
		<script>
		function fn_check() {
			var f = document.AdminForm;
			if ($("textarea[name=adminTextarea]").val()=="") {
				alert("내용을 입력해주세요!");
				$("textarea[name=adminTextarea]").focus();
				return;
			}
			var con = confirm("답변을 작성하시겠습니까?");
			if (con==true) {
				f.submit();
			}
		}
		</script>
	</form>
	</div>
	</div>
	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
	</div>

</body>
</html>
