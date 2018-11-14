<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : HeadPiece
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20121222

-->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 	<jsp:include page="login_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script>
<%
if(session.getAttribute("failFTLogin")!=null){
	session.removeAttribute("failFTLogin");
%>
	alert('입력하신 정보가 틀렸습니다');
<%	
} //end of if
%>

</script>
<style>
    .navbar-up-btn {
        margin-left: 840px;
    }

    .carousel-inner img {
        width: 1090px;
        height: 800px;
    }
</style>


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
                <h1><img src="images/index_img/logo.png"></img></h1>
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
                                            <form id="SForgotloginForm" >
                                                <table id="ForgotFormTable">
                                                    <tr>
                                                        <th>강사 이름</th>
                                                        <td><input type="text" class="form-control" id="TIFName" name="TIFName" placeholder="이름을 입력해 주세요"></td>
                                                        <td rowspan="2"><button type="submit" class="btn btn-success btn-block" id="loginForgotSubmitBtn1">찾기</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>강사 이메일</th>
                                                        <td><input type="text" class="form-control" id="TIFEmail" name="TIFEmail" placeholder="이메일을 입력해 주세요"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                        <!--비밀번호찾기폼-->
                                        <div id="PwdForgot">
                                            <form id="TForgotloginForm" method="post" action="TforgotPwd.login">
                                                <table id="ForgotFormTable">
                                                    <tr>
                                                        <th>강사 이름</th>
                                                        <td><input type="text" class="form-control" id="TPFName" name="TPFName" placeholder="이름을 입력해 주세요"></td>
                                                        <td rowspan="3"><button type="submit" class="btn btn-success btn-block" id="loginForgotSubmitBtn2">찾기</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>강사 아이디</th>
                                                        <td><input type="text" class="form-control" id="TPFid" name="TPFid" placeholder="아이디를 입력해 주세요"></td>
                                                    </tr>
                                                    <tr>
                                                        <th>강사 이메일</th>
                                                        <td><input type="text" class="form-control" id="TPFEMail" name="TPFEMail" placeholder="이메일을 입력해 주세요"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                        <button class="btn btn-success btn-block" onclick="location.href = 'Login_Sforgot.login'">혹시 학생이신가요?</button>
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
            if(this.TIFName.value==""){
                alert('이름을 입력하세요!');
                this.TIFName.focus();
                return;
            }
            if(this.TIFEmail.value==""){
                alert('이메일을 입력하세요!');
                this.TIFEmail.focus();
                return;
            }
            
            this.action="TforgotId.login";
            this.method="post";
            this.submit();
        })
        $('#TForgotloginForm').submit(function(){
            event.preventDefault();
            if(this.TPFName.value==""){
                alert('이름을 입력하세요!');
                this.TPFName.focus();
                return;
            }
            if(this.TPFid.value==""){
                alert('아이디를 입력하세요!');
                this.TPFid.focus();
                return;
            }
            if(this.TPFEMail.value==""){
                alert('이메일을 입력하세요!');
                this.TPFEMail.focus();
                return;
            }
            this.submit();
        })
     })

</script>
