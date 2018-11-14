<%@page import="org.sist3.Bean.QnABoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="board_head.jsp"></jsp:include>
</head>
<script>
$(document).ready(function() {
	$("input[name=b_no]").val($("input[name=urlno]").val());
})
</script>
<body>
<form name="frm" method="POST" action="QnAPasswordProcess.board">
<table class="table">
<tr>
<td width="10%">비밀번호</td>
<td width="80%"><input type="password" name="qnaPassword" class="form-control" style="font-family:Malgun Gothic"></td>
<td width="10%"><button name="passwordBtn" class="button"> 확인 </button></td>
</tr>
</table>
<input type="hidden" name="b_no" value="">
</form>
<script>
$(document).ready(function() {
	$("input[name=b_no]").val($("input[name=urlNo]").val());
})
                    function fn_action() {
					    
						var f = document.frm;
						if ($("input[name=qnaPassword]").val()=="") {
							   alert("비밀번호를 입력해주세요!");
							   return;
						}
							f.submit();
						
					}
                    </script>
</body>
</html>