<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="myStudent_head.jsp" flush="false"></jsp:include> 
    <link href="css/Mypage_Student_Revise.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script>

<%
if(request.getAttribute("UserCheck")!=null){
	request.removeAttribute("UserCheck"); // 이걸 해줘야 창이 뜸
%>
	alert('본인확인이 되지 않습니다.');
<%	
}
%>



</script>
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
        <div id="page">
            <div id="content">

                <div id="intro-head">
                <div id="jointalble_content">

						<form method="post" action="newPwd.myStudent"> <!-- controller -> Action으로 감 -->

							<table class="table" id="joinTable">
								<tr>
									<td>기존 비밀번호</td>
									<td><input type="text" name="Pwd"></td>
								</tr>
								<tr>
									<td>새로운 비밀번호</td>
									<td><input type="password" name="newPwd"></td>
								</tr>
								<tr>
									<td>비밀번호 확인</td>
									<td><input type="password" name="checkPwd"></td>
								</tr>
							</table>
							
							<!-- 비밀번호와 비번확인 비교하여 alert창 -->
							<input type="submit" class="btn btn-default" value="비밀번호 변경" style="margin-left: 780px; margin-top: 40px;"/>

						</form>
				</div>
        </div>
        </div>
       </div>
	   	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>     
    </div>                   
</body>
</html>