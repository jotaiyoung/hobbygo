<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="Join_head.jsp"></jsp:include>
</head>
<style>
	#logo img {
		width:250px;
	}
</style>
<script>
	$(document).ready(function() {
		
		var useThisID = $(":text[name=idOK]").val();
		
		$(":button[name='useThis']").click(function() {
			$(opener.document).find(":text[name=id]").css({"display":"block"}).val(useThisID);
			$(opener.document).find(":button[name=sameId]").attr("class", "btn btn-success btn-sm").val("사용가능");
			self.close();
		})
		
		var f = document.idCheck;
		$("form[name=idCheck]").submit(function() {
			event.preventDefault();
			
			if (f.checkId.value =="") {
	            alert("ID를 입력해주세요.");
	            f.id.focus();
	            return;
	        } 
			if (f.checkId.value.length < 6 || f.checkId.value.length>12) {
	            alert("ID는 6~12자 사이로 입력해주세요.");
	            return;
	        } 
			this.method="POST";
			this.action="IDcheck.join";
			this.submit();
		
		})
	})
</script>
<body>
<div id="wrapper" class="container" style="width:100%; margin:0 auto;">
	<div id="logo">
    	<a href=""><img src="images/index_img/logo.png" alt="" /></a>
    </div>

	<form name="idCheck">
		<table>
		<%
			if(request.getAttribute("checkId")==null) {
		%>
		 <tr>
			<td><input type="text" name="checkId" placeholder="아이디를 입력해주세요."/></td>
			<td><input type="submit" class="btn btn-default btn-sm" name="checkIdBtn" value="확인"/></td>
		  </tr>
		<% 
			} else if(request.getAttribute("checkId") != null) {
				String idOK = (String)request.getAttribute("checkId");
				if(idOK.equals("no")) {
		%>
		  <tr>
			<td><input type="text" name="checkId" placeholder="아이디를 입력해주세요."/></td>
			<td><input type="submit" class="btn btn-default btn-sm" name="checkIdBtn" value="확인"/></td>
		  </tr>
		  <tr><td>이미 존재하는 아이디입니다!</td></tr>			
		<%		
				} else {
		%>
			<tr>
				<td><input type="text" name="idOK" value="<%=idOK %>"/></td>
			</tr>
			<tr>
				<td>해당 아이디는 사용 가능합니다.</td>
			</tr>
			<tr>
				<td><input type="button" name="useThis" value="계속하기"  /></td>
			</tr>
		<%
				} 
			}		
		%>
		</table>
	</form>
</div>
</body>
</html>