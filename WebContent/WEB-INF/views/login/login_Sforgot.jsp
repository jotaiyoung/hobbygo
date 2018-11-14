<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<jsp:include page="login_head.jsp"></jsp:include>
</head>
<style>
    .navbar-up-btn {
        margin-left: 840px;
    }

    .carousel-inner img {
        width: 1090px;
        height: 800px;
    }
</style>
<script src="js/Cross.js"></script>
<script>
<%
if(session.getAttribute("failFSLogin")!=null){
	session.removeAttribute("failFSLogin");
%>
	alert('입력하신 정보가 틀렸습니다');
<%	
} //end of if
%>

</script>

<body>


    <!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width: 100%;">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
         <div id="navbar-up-specialLoad">
	        <jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
         </div>
        <div id="header">
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a href="#"><img src="images/index_img/logo.png"></img></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
	        <jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
                            <div id="loginForgotWrap" class="well">

                                    <div id="loginForgotSelectDiv">
                                        <ul id="loginForgotSelectNav">
                                            <li id="FIdBtn">아이디 찾기</li>
                                            <li id="FPwdBtn">비밀번호 찾기</li>
                                        </ul>
                                    </div>


                                    <!--아이디찾기폼-->
                                    <div id="loginForgotFormDiv">
                                        <div id="IdForgot">
                                            <form id="SForgotloginForm" method="post" action="SforgotId.login">
                                                <table id="ForgotFormTable">
                                                    <tr>
                                                        <th>학생 이름</th>
                                                        <td><input type="text" class="form-control" id="SIFName" name="SIFName" placeholder="이름을 입력해 주세요"></td>
                                                        <td rowspan="2"><button type="submit" class="btn btn-success btn-block" id="loginForgotSubmitBtn1">찾기</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>학생 이메일</th>
                                                        <td><input type="text" class="form-control" id="SIFEmail" name="SIFEmail" placeholder="이메일을 입력해 주세요"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                        <!--비밀번호찾기폼-->
                                        <div id="PwdForgot">
                                            <form id="TForgotloginForm" method="post" action="SforgotPwd.login">
                                                <table id="ForgotFormTable">
                                                    <tr>
                                                        <th>학생 이름</th>
                                                        <td><input type="text" class="form-control" id="SPFName" name="SPFName" placeholder="이름을 입력해 주세요"></td>
                                                        <td rowspan="3"><button type="submit" class="btn btn-success btn-block" id="loginForgotSubmitBtn2">찾기</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>학생 아이디</th>
                                                        <td><input type="text" class="form-control" id="SPFid" name="SPFid" placeholder="아이디를 입력해 주세요"></td>
                                                    </tr>
                                                    <tr>
                                                        <th>학생 이메일</th>
                                                        <td><input type="text" class="form-control" id="SPFEMail" name="SPFEMail" placeholder="이메일을 입력해 주세요"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                        <button class="btn btn-success btn-block" onclick="location.href = 'Login_Tforgot.login'">혹시 강사이신가요?</button>
                                    </div>
                            </div>

    	 <div id="footer">
	     	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
     	 </div>
    </div>

</body>
</html>
<script>


    $(document).ready(function(){

        /* $("#navbar-up-specialLoad").load("../menu/topNavMenu.html");
        $("#navbar-menu-specialLoad").load("../menu/navMenu.html");
        $("#footer").load("../menu/footer.html"); */

        $('#PwdForgot').css({
            display:'none'
        })
        $('#FIdBtn').click(function(){
            $('#IdForgot').fadeIn();
            $('#PwdForgot').hide();
        })
        $('#FPwdBtn').click(function(){
            $('#PwdForgot').fadeIn();
            $('#IdForgot').hide();
        })

        $('#SForgotloginForm').submit(function(){
        	 event.preventDefault();
            if(this.SIFName.value==""){
                alert('이름을 입력하세요!');
                this.SIFName.focus();
                return;
            }
            if(this.SIFEmail.value==""){
                alert('이메일을 입력하세요!');
                this.SIFEmail.focus();
                return;
            } 
            this.submit();
        })
        $('#TForgotloginForm').submit(function(){
            event.preventDefault();
            if(this.SPFName.value==""){
                alert('이름을 입력하세요!');
                this.SPFName.focus();
                return;
            }
            if(this.SPFid.value==""){
                alert('아이디를 입력하세요!');
                this.SPFid.focus();
                return;
            }
            if(this.SPFEMail.value==""){
                alert('이메일을 입력하세요!');
                this.SPFEMail.focus();
                return;
            }
            this.submit();
        })

       /*  var search_name = ["search_hobby", "search_location", "search_pay"];
        var search_hobby = ["운동", "피아노", "미술", "사진", "기타"];
        var search_location = ["서울", "대구", "대전", "부산", "강원", "제주", "기타"];
        var search_pay = ["무료", "10만원대", "20만원대", "30만원대", "기타"];

        for (var i = 0; i < search_hobby.length; i++) {
            $(".side-panel.panel-body:eq(0)").append("<button class='btn btn-default'>" + search_hobby[i] + "</button>");
        }

        for (var i = 0; i < search_location.length; i++) {
            $(".side-panel.panel-body:eq(1)").append("<button class='btn btn-default'>" + search_location[i] + "</button>");
        }

        for (var i = 0; i < search_pay.length; i++) {
            $(".side-panel.panel-body:eq(2)").append("<button class='btn btn-default'>" + search_pay[i] + "</button>");
        } */

        /* //sidebar움직이는 것
        $(window).scroll(function() {
            var window_top = $(window).scrollTop();
            var standard = $("#banner").offset().top-100;
            $("#sidebar").animate({
                top: window_top + standard + 'px'
            }, 1);

        }) */

    })

</script>
