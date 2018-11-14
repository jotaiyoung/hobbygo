<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="org.sist3.Bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
  
</head>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	
  #login_find_data{
  	  font-family: 'Jeju Gothic', serif;
      width:900px;
      height:200px;
      margin:auto;
      margin-top:50px;
      margin-bottom:50px;      
      text-align:center;   
      border:10px solid lightgray;
  }
</style>
<body>








<div class="container">
  <div class="well" >
  <h1 style="font-family: 'Jeju Gothic', serif"><span class="glyphicon glyphicon-user"></span> ADMIN</h1>
    <div id="login_find_data">
    <form name="adminLoginForm" method="post" action="superuser.login">
			<table class="table">
				<tr>
					<th><input type="text" class="form-control" id="Aid" name="Aid" placeholder="관리자 아이디"></th>				
				</tr>			
				<tr>
					<th><input style="font-family:none;" type="password" class="form-control" id="Apass" name="Apass" placeholder="관리자 비밀번호"></th>				
				</tr>			
				<tr>
					<th></th>				
				</tr>			
			</table>
	      <a href=""><button id="gologinbtn" class="btn btn btn-lg btn-block">관리자모드</button></a>
      </form>
    </div>
  </div>
</div>

</body>
</html>
