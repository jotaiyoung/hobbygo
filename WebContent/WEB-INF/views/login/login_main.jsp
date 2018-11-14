<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <jsp:include page="login_head.jsp"></jsp:include>
</head>


<script src="js/Cross.js"></script>
<script>
<%
if(session.getAttribute("failLogin")!=null){
	session.removeAttribute("failLogin");
%>
	alert('비밀번호 혹은 아이디가 틀렸습니다');
<%	
} //end of if
%>
</script>
<script src="js/Cross.js"></script>

<style>

#loginSelectNav> .loginBtnActive {
	background:lightgray;
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
                <h1><a  href=""><img src="images/index_img/logo.png"></img></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	 <jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
        
                            <div id="loginWrap" class="well">

                                    <div id="loginSelectDiv">
                                        <ul id="loginSelectNav">
                                            <li id="SBtn">학생</li>
                                            <li id="TBtn">강사</li>
                                        </ul>
                                    </div>


                                    <!--학생폼-->
                                    <div id="loginFormDiv">
                                        <div id="SLogin">
                                            <form id="SloginForm" method="post" action="student.login">
                                                <table id="loginFormTable">
                                                    <tr>
                                                        <th>학생 아이디</th>
                                                        <td><input type="text" class="form-control" id="Sid" name="Sid" placeholder="아이디를 입력해 주세요"></td>
                                                        <td rowspan="2"><button type="submit" class="btn btn-success btn-block" id="SloginSubmitBtn">Login</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>학생 비밀번호</th>
                                                        <td><input type="password" class="form-control" id="Spass" name="Spass" placeholder="비밀번호를 입력해 주세요"
                                                        style="font-family:Malgun Gothic"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                                <table id="loginFormBtnsTable">
                                                    <tr>
                                                        <th colspan="3">
                                                            <button class="btn btn-default btn-block" id="loginSForgotBtn"
                                                                    onclick="location.href = 'Login_Sforgot.login'">학생 아이디/비밀번호 찾기</button>
                                                            <button class="btn btn-default btn-block" id="SloginMemberjoinBtn">회원가입</button>
                                                        </th>
                                                    </tr>
                                                </table>

                                        </div>
                                        <!--선생폼-->
                                        <div id="TLogin">
                                            <form id="TloginForm" method="post" action="teacher.login">
                                                <table id="loginFormTable">
                                                    <tr>
                                                        <th>강사 아이디</th>
                                                        <td><input type="text" class="form-control" id="Tid" name="Tid" placeholder="아이디를 입력해 주세요"></td>
                                                        <td rowspan="2"><button type="submit" class="btn btn-success btn-block" id="TloginSubmitBtn">Login</button></td>
                                                    </tr>
                                                    <tr>
                                                        <th>강사 비밀번호</th>
                                                        <td><input type="password" class="form-control" id="Tpass" name="Tpass" placeholder="비밀번호를 입력해 주세요"
                                                        style="font-family:Malgun Gothic"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                                <table id="loginFormBtnsTable">
                                                    <tr>
                                                        <th colspan="3">
                                                            <button class="btn btn-default btn-block" id="loginTForgotBtn"
                                                                    onclick="location.href = 'Login_Tforgot.login'">강사 아이디/비밀번호 찾기</button>
                                                            <button class="btn btn-default btn-block" id="TloginMemberjoinBtn">회원가입</button>
                                                        </th>
                                                    </tr>
                                              </table>
                                        </div>
                                </div>
        </div>
    		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/> 

    
    </div>
</body>
</html>
<script>
    $(document).ready(function(){
        
      
        
        $('#TLogin').css({
            display:'none'
        })
        $('#SBtn').click(function(){
            $('#SLogin').fadeIn();
            $('#TLogin').hide();
            
            $('#SBtn').addClass("loginBtnActive");
            $('#TBtn').removeClass("loginBtnActive");
        })
        $('#TBtn').click(function(){
            $('#TLogin').fadeIn();
            $('#SLogin').hide();
            
            $('#TBtn').addClass("loginBtnActive");
            $('#SBtn').removeClass("loginBtnActive");
        })

        $('#SloginForm').submit(function(){
            event.preventDefault();
            if(this.Sid.value==""){
                alert('아이디를 입력하세요!');
                this.Sid.focus();
                return;
            }
            if(this.Spass.value==""){
                alert('비밀번호를를 입력하세요!');
                this.Spass.focus();
                return;
            }
            this.submit();
        })
        $('#TloginForm').submit(function(){
            event.preventDefault();
            if(this.Tid.value==""){
                alert('아이디를 입력하세요!');
                this.Tid.focus();
                return;
            }
            if(this.Tpass.value==""){
                alert('비밀번호를를 입력하세요!');
                this.Tpass.focus();
                return;
            }
            this.submit();
        })
        
        $('#TloginMemberjoinBtn').click(function(){
        	location.href = 'Prepare_Teacher.login';
        })

        $('#SloginMemberjoinBtn').click(function(){
        	location.href = 'Prepare_Student.login';
        })
       
        
    })

</script>    
