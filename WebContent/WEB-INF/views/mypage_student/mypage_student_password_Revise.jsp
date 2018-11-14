<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="myStudent_head.jsp" flush="false"></jsp:include> 
    <link href="css/MyPage_Student.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script>
	$(document).ready(function() {
        $("button[name=ChangeBtn]").click(function() {
            if ($("input[name=CurPassword]").val() == "") {
                alert("현재 비밀번호를 입력해주세요!");
            } else if ($("input[name=ChaPassword]").val()=="") {
                alert("변경할 비밀번호를 입력해주세요!");
            } else if ($("input[name=ChaPassword]").val().length <4 || $("input[name=CurPassword]").val().length >20) {
                alert("비밀번호는 4자리에서 20자리입니다.");
            } else if ($("input[name=ChaPassword2]").val()!=$("input[name=ChaPassword]").val()) {
                alert("비밀번호가 일치하지 않습니다. 다시 한번 입력해주세요.");
            }
        })
	})
</script>
<body>
 <div class="container" id="passTitle">
 <br>
  비밀번호 변경하기
  <br>
  <br>
  <hr>
  </div>
  <div class="container" id="passTable">
   <table class="table">
       <tr>
           <td>현재 비밀번호</td>
           <td><input type="text" name="CurPassword" class="form-control input-sm"></td>
       </tr>
       <tr>
           <td>변경 비밀번호</td>
           <td><input type="text" name="ChaPassword" class="form-control input-sm"></td>
       </tr>
       <tr>
           <td>변경 비밀번호 재 입력</td>
           <td><input type="text" name="ChaPassword2" class="form-control input-sm"></td>
       </tr>   
   </table>
    <button name="ChangeBtn" class="btn btn-default">비밀번호 변경하기</button>
    </div>
</body>
</html>