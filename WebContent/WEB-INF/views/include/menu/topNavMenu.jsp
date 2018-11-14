<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	div{
			font-family: 'Jeju Gothic', serif;
	}
</style>
<div class="btn-group navbar-up-btn">
<%
/* 로그인 후에 로그인->로그아웃버튼으로 만들기 */
if(session.getAttribute("s_member")!=null || session.getAttribute("t_member")!=null || session.getAttribute("admin")!=null){
%>
	<button type="button" class="btn btn-default btn-sm" name="logoutBtn" id="logoutBtn">로그아웃</button>
<%
} else { 
%>
	<button type="button" class="btn btn-default btn-sm" name="loginBtn">로그인</button>
	<button type="button" class="btn btn-default btn-sm" name="joinBtn">회원가입</button>
<%
}

if(session.getAttribute("s_member")!=null && session.getAttribute("t_member")==null) {
%>
	<div class="btn-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" name="mySBtn">
			마이페이지 <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
        <li><a href="cart.myStudent">장바구니</a></li>
        <li><a href="mail.myStudent">쪽지함</a></li>
        <li><a href="register.myStudent">수강신청</a></li>
    </ul>
</div>
<%
} else if(session.getAttribute("s_member")==null && session.getAttribute("t_member")!=null) {
%>    
    <div class="btn-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" name="myTBtn">
				마이페이지 <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="profile.myTeacher">강사페이지</a></li>
            <li><a href="mail.myTeacher">쪽지함</a></li>
            <li><a href="classpage_revise.myTeacher">강좌관리</a></li>
        </ul>
    </div>
    
<%
}
%>
    
    
</div>

<script>
    $(document).ready(function() {
    	$(".dropdown-toggle:eq(0)").mouseenter(function() {
            event.preventDefault();
            $(".dropdown-menu:eq(0)").css({"display":"block"});
        })
        
        $(".dropdown-menu:eq(0)").mouseleave(function() {
            event.preventDefault();
            $(".dropdown-menu:eq(0)").css({"display":"none"});
        })
        
        
        $("button[name=loginBtn]").click(function() {
        	location.replace("USER.login");
        })
        $("button[name=joinBtn]").click(function() {
        	location.replace("USER.join");
        })

        $("button[name=mySBtn]").click(function() {
            window.location="main.myStudent";
        })
        $("button[name=myTBtn]").click(function() {
            window.location="main.myTeacher";
        })
        
        $('#logoutBtn').click(function(){
        	
        	var con = confirm('정말로 로그아웃 하겠습니까?');        	
        	if(con){
        		location.replace('sLogOut.login');
        	}
        })
    })
</script>