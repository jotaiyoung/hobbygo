<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <link href="css/mypage_teacher.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
    <jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script>
    $(document).ready(function() {
    	var f = document.passwordChange;
    	$("form[name=passwordChange]").submit(function() {
			event.preventDefault();
       
            if ($("input[name=CurPassword]").val() == "") {
                alert("현재 비밀번호를 입력해주세요!");
            	f.CurPassword.focus();
                return;
            } else if ($("input[name=CurPassword]").val()==$("input[name=ChaPassword]").val()) {
                alert("현재 비밀번호와 동일합니다. 현재 비밀번호와 다르게 입력해주십시오.");
                f.CurPassword.focus();
                return;
            } else if ($("input[name=ChaPassword]").val()=="") {
                alert("변경할 비밀번호를 입력해주세요!");
                f.ChaPassword.focus();
                return;
            } else if ($("input[name=ChaPassword]").val().length <4 || $("input[name=CurPassword]").val().length >20) {
                alert("비밀번호는 4자리에서 20자리입니다.");
                f.ChaPassword.focus();
                return;
            } else if ($("input[name=ChaPassword2]").val()!=$("input[name=ChaPassword]").val()) {
                alert("변경할 비밀번호가 일치하지 않습니다. 다시 한번 입력해주세요.");
                f.ChaPassword2.focus();
                return;
            } else if ($("input[name=RealPassword]").val()!=$("input[name=CurPassword]").val()) {
                alert("현재 비밀번호가 일치하지 않습니다. 바르게 입력해주십시오.");
                f.CurPassword.focus();
                return;
            } 
            this.method="POST";
			this.action="password_Revise_ok.myTeacher";
			this.submit();
        })
    });
</script>

<body>
 <div class="container" id="passTitle">
 <br>
  비밀번호 변경하기
  <br>
  <br>
  <hr>
  </div>
  <%
		if (request.getAttribute("teacherList") != null) {
			ArrayList<TeacherBean> list = (ArrayList<TeacherBean>) request.getAttribute("teacherList");
			int recordSize = list.size();
			
			for (int i = 0; i < recordSize; i++) {
				TeacherBean vo = list.get(i);
	%>
	<input type="hidden" name="RealPassword" value ="<%=vo.getT_pwd()%>"></input>
	<%
			}
		}
       %>
  <div class="container" id="passTable">
  
  <form name="passwordChange">
   <table class="table">
       <tr>
           <td>현재 비밀번호</td>
           <td><input type="password" name="CurPassword" class="form-control input-sm"></td>
       </tr>
       <tr>
       
           <td>변경 비밀번호</td>
           <td><input type="password" name="ChaPassword" class="form-control input-sm"></td>
       </tr>
       <tr>
           <td>변경 비밀번호 재 입력</td>
           <td><input type="password" name="ChaPassword2" class="form-control input-sm"></td>
       </tr>   
   </table>
   <input type="submit" name="ChangeBtn" class="btn btn-default" value="비밀번호 변경"></input>
    </form>
    </div>
</body>


</html>