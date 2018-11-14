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
  <h1 style="font-family: 'Jeju Gothic', serif"><span class="glyphicon glyphicon-user"></span> 회원 개인정보 찾기 센터</h1>
    <div id="login_find_data">



      <%
      if(session.getAttribute("sfi_member")!=null){
    	  StudentBean s_member = (StudentBean)session.getAttribute("sfi_member");

      %>
      	<h3><%=s_member.getS_name() %> 님의 아이디는</h3>
      	<h3><%=s_member.getS_id() %> 입니다</h3>
      <%
      	session.removeAttribute("sfi_member");
      }

      if(session.getAttribute("sfp_member")!=null){
    	  StudentBean s_member = (StudentBean)session.getAttribute("sfp_member");

      %>
      	<h3><%=s_member.getS_name() %> 님의 아이디는 <%=s_member.getS_id() %> 이며 </h3>
      	<h3><%=s_member.getS_name() %> 님의 비밀번호는 <%=s_member.getS_pwd() %> 입니다</h3>
      <%
      	session.removeAttribute("sfp_member");
      }

      if(session.getAttribute("tfi_member")!=null){
      	TeacherBean t_member = (TeacherBean)session.getAttribute("tfi_member");

      %>
      	<h3><%=t_member.getT_name() %> 님의 아이디는</h3>
      	<h3><%=t_member.getT_id() %> 입니다.</h3>
      <%
      	session.removeAttribute("tfi_member");
      }
      if(session.getAttribute("stp_member")!=null){
    	  TeacherBean t_member = (TeacherBean)session.getAttribute("stp_member");

      %>
      	<h3><%=t_member.getT_name() %> 님의 아이디는 <%=t_member.getT_id() %> 이며</h3>
      	<h3><%=t_member.getT_name() %> 님의 비밀번호는 <%=t_member.getT_pwd() %> 입니다</h3>
      <%
      	session.removeAttribute("stp_member");
      }
      %>
      <br>
      <a href="USER.login"><button id="gologinbtn" class="btn btn btn-lg btn-block">로그인하러가기</button></a>
    </div>
  </div>
</div>

</body>
</html>
