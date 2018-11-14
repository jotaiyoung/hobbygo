<%@page import="org.sist3.Bean.HobbyinBoardBean"%>
<%@page import="com.sun.javafx.fxml.BeanAdapter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="hobbyin_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script src="js/sideBar.js"></script>
<script>
    $(document).ready(function(){
        
    	$(":button[value='목록보기']").click(function() {
    		location.assign("main.hobbyIn");
    	})
    	
    })

</script>
<body>
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
	<div style="width:1000px;">
        <form name="boardWriteForm">
        	<center>
        	<table class="table" align="center">
        		<%
        			if(request.getAttribute("input") != null) {
        				HobbyinBoardBean bean = (HobbyinBoardBean)request.getAttribute("input");
        				String cate = bean.getB_in_category();
        				String category = "";
        				if(cate.equals("C00")) category = "운동";
        				else if(cate.equals("C01")) category = "음악";
        				else if(cate.equals("C02")) category = "미술";
        				else if(cate.equals("C03")) category = "사진";
        				else if(cate.equals("C04")) category = "꽃꽂이";
        				else if(cate.equals("C05")) category = "게임";
        				else if(cate.equals("C06")) category = "학문";
        				else if(cate.equals("C07")) category = "요리";
        				else if(cate.equals("C08")) category = "댄스";
        				else if(cate.equals("C09")) category = "퀼트";
        		%>
        		<tr>
        			<td>카테고리</td>
        			<td><%=category %></td><%-- 카테고리가 코드로 나옴. --%>
        		</tr>
        		<tr>
        			<td>제목</td>
        			<td>
        				<input style="width:700px;" type="text" name="title" value="<%=bean.getB_in_title()%>" readonly>
        			</td>
        		</tr> 		
        		<tr>
        			<td colspan="2">
        			<div id="boardWriteCon">
                		<textarea name="content" readonly><%=bean.getB_in_content() %></textarea>
                	</div>
                	</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="right">
        				<input type="button" class="btn" value="목록보기">
        			</td>
        		</tr>
        		<%		
        			}
         		%>
        		
        	</table>
        	</center>
        </form>
    </div>
    <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
</div>

</body>
</html>
