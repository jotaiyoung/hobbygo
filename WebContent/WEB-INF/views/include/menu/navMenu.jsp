<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	div{
			font-family: 'Jeju Gothic', serif;
		}
</style>
<nav class="navbar navbar-default">
    <div class="container-fluid">

        <ul class="nav navbar-nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="HobbyConsulting.Consult">취미컨설팅</a></li>
            <li><a href="hobby.search">취미검색</a></li>
            <li class="dropdown">
            <!-- ../board/community_Hobbyin.html -->
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티
				<span class="caret"></span></a>
                <ul class="dropdown-menu">
                     <li><a href="main.hobbyIn">취미IN</a></li> 
                    <li><a href="Q&A.board">Q&A</a></li>
                    <li><a href="FAQ.board">FAQ</a></li>
                </ul>
            </li>

        </ul>
    </div>
</nav>