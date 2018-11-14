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
    		var result = confirm("지금까지 작성했던 내용이 지워집니다. \n목록으로 이동하시겠습니까?");
    		if(result) location.assign("main.hobbyIn");
    		else return;
    	})
    	
        $("form[name='boardWriteForm']").submit(function() {
        	event.preventDefault();
        	var f = document.boardWriteForm;
        	if(f.category.value=="카테고리선택") {
        		alert("카테고리를 선택해주세요.");
        		return;
        	}
        	if(f.title.value=="") {
        		alert("제목을 입력해주세요.");
        		f.title.focus();
        		return;
        	}
        	if(f.title.value.length > 25) {
        		alert("제목은 25자 이하까지만 입력가능합니다.");
        		return;
        	}
        	 if(f.content.value=="") {
        		alert("내용을 입력해주세요.");
        		return;
        	}
        	 
        	this.method="POST";
        	this.action="wirteOk.hobbyIn";
        	this.submit();
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
        		<tr>
        			<td>카테고리</td>
        			<td>
        				<select name="category">
								<%
	                            	String[] hobby = {"카테고리선택", "운동", "음악", "미술", "사진", "꽃꽂이", "게임", "학문", "요리", "댄스", "퀼트"};
	                            	for(int i=0; i<hobby.length; i++) {
	                            		String msg = "C0"+(i-1);
	                            		if(i==0) msg="카테고리선택";
	                            %>
	                            	<option value="<%=msg%>"><%=hobby[i] %></option>
	                            <%
	                            	}
	                            %>
						</select>
        			</td>
        		</tr>
        		<tr>
        			<td>제목</td>
        			<td>
        				<input style="width:700px;" type="text" name="title" placeholder="게시글 제목을 입력하세요.">
        			</td>
        		</tr> 		
        		<tr>
        			<td colspan="2">
        			<div id="boardWriteCon">
                		<textarea name="content"></textarea>
                	</div>
                	</td>
        		</tr>
        		<tr>
        			<td colspan="2" align="right">
        				<input type="button" class="btn" value="목록보기">
        				<input type="submit" class="btn" value="작성하기">
        			</td>
        		</tr>
        	</table>
        	</center>
        </form>
    </div>
    <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
</div>

</body>
</html>
