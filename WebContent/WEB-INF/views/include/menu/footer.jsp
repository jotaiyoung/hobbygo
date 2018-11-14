<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

</style>
<div id=footer>
	
	<div class="footer-menu">
    <ul>
        <li class="breadcrumb-item"><a href="#">회사소개</a></li>
        <li class="breadcrumb-item"><a href="#">서비스약관 및 정책</a></li>
        <li class="breadcrumb-item"><a href="#">개인정보취급방침</a></li>
        <li class="breadcrumb-item"><a href="#">제안하기</a></li>
        <li class="breadcrumb-item"><a href="#">고객센터</a></li>
<%
	if(session.getAttribute("admin") == null){
		
%>
		<li class="breadcrumb-item"><a href="ADMIN.login">관리자전용</a></li>
<%
	} else {
%>
        <li class="breadcrumb-item"><a href="adminPage.admin">관리페이지</a></li>


<%
	}
%>
        
        <li><a href="#"></a></li>
    </ul>
</div>
<div class="footer-menu">
    <ul>
        <li style="color:cadetblue; font-weight: bold">HOBBY GO</li>
        <li>쌍용교육센터 G반 3조</li>
        <li>팀원 : 조운종 김동일 서근종 김진우 안해정 김채린</li>
    </ul>
</div>
<div class="footer-menu">
    <ul>
        <li>HOBBY GO는 통신판매중개자이며 모임에 대한 당사자 및 주최자가 아닙니다. 따라서 HOBBY GO는 등록된 모임 및 강좌에 대하여 책임을 지지 않습니다.</li>
    </ul>        
</div>
<br>
<div class="footer-menu">
    <ul style="padding-left: 420px;">
        <li style="font-size: 12px;">copyright ⓒ HOBBY GO, All Rigths Reserved.</li>
    </ul>        
</div>

</div>