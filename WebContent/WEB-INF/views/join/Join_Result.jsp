<%@page import="org.sist3.Bean.JoinMemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String fileName = "";
	String memberName = "";
	if(request.getAttribute("memberInfo") != null) {
		JoinMemberBean member = (JoinMemberBean)request.getAttribute("memberInfo"); 
		fileName = member.getFileName();
		memberName = member.getName();
		System.out.println(fileName);
	}
	//System.out.println(//"C:\\Users\\안해정\\SIST_Project01\\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\project_join\fileSave\member")
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<jsp:include page="Join_head.jsp"></jsp:include>
</head>
<style>
	
</style>
<script>
	$(document).ready(function() {
		$("button").click(function() {
			var addr = "";
			if($(this).text() == "로그인하기") {
				addr = "USER.login";
			} else if($(this).text() == "메인으로 가기") {
				addr="index.jsp";
			} else if($(this).text() == "회원가입하기") {
				addr="USER.join";
			}
			location.href=addr;
		})
	})
</script>
<body>
    
    <div id="wrapper" class="container" style="width: 100%;">

        <div id="navbar-up-specialLoad">
        <jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>        
        </div>
        <div id="header">
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png" alt="" /></a></h1>
            </div>
        </div>
   
        <div id="navbar-menu-specialLoad">
        <jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>        
        </div>
   
        <div id="page" class="container">
        	<div class="panel panel-default">
        <%        
        	if(request.getAttribute("joinResult")!= null) {
        		boolean result = (Boolean)request.getAttribute("joinResult");
        		if(result) {
        %>		
        		<div class="panel-body">
        			<center>
	        			<img src="images/join_img/welcome.png" style="width:80px; margin:0 auto;"/>
			        	<h1 style="margin:20px auto;"><%=memberName %>님, 가입을 축하드립니다!</h1>        		
			        	<button class="btn btn-default">로그인하기</button>
			        	<button class="btn btn-default">메인으로 가기</button>
		        	</center>
		        	<p><img style="width:13%;" src="<%=request.getContextPath()+"/fileSave/member/"+fileName %>"></p>
		        	<%-- <%System.out.println(request.getContextPath()+"/fileSave/member/"+fileName); %>	 --%>	
        		</div>
        <%
        		}
        	} else {
        %>
        	<h1>가입에 실패했습니다..</h1>
        	<button class="btn btn-default">회원가입하기</button>
        	<button class="btn btn-default">메인으로 가기</button>
        <%		
        	}
        %>
        	</div>
        </div>
        <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>      
    </div>
</body>
</html>