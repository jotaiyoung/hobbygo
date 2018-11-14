<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
   	<jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
   	<link href="css/mypage_teacher.css" rel="stylesheet" type="text/css" media="all" />   
   	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" /> 
</head>
<script src="js/Cross.js"></script>
<script>

    var popup_cart;
    var popup_apply;
    function popup_cart() {
        popup_cart = window.open("addcart.html", "popup_cart", "top=500,left=700,width=250,height=120");
    }
    function popup_apply() {
        popup_apply = window.open("applyclass.html", "popup_apply", "top=500,left=700,width=250,height=120");
    }
    $(document).ready(function(){
        $('#TCIbtn').click(function(){
            $('#teacherComconInput').slideDown();
            $('#TCItextarea').val($('#teacherComconInnerText').text());
        })
        $('#TCIbtnCls').click(function(){
            $('#teacherComconInput').slideUp();
            $('#teacherComconInnerText').text($('#TCItextarea').val());
        })
    })
</script>

<body>
    
    
    <div id="wrapper" class="container">
        <div id="navbar-up-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
            <div id="logo">
               <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
   
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
   

    <div id="teacherPageWrap">
        <div class="well">
            <!--선생님 개인사진/코멘트-->
            <div id="teacherPersonal">
                <div id="teacherPersonalOutLine">
                    <div id="teacherImg"><img src="images/mypage_teacher_img/tc.jpg"></div>
                    <div id="teacherComment">
                        <div id="teacherName">홍길동 선생님</div>
                        <div id="teacherComcon">
                            <div id="teacherComconInnerText">안녕하세요! 노고산동 피아노쌤 홍길동입니다!<br>오늘도 홧팅!!<br>연락처 000-0000-0000<br>언제나 연락주세요! 친절하게 상담해 드려요 (૭ ᐕ)૭</div>
                            <button class="btn" id="TCIbtn">수정</button>
                            <div id="teacherComconInput">
                                <textarea id="TCItextarea" rows="3" cols="30"  maxlength="80"></textarea>
                                <button class="btn" id="TCIbtnCls">입력</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="teacherTableWrap">
                <form name="TPMOD" action="profile.myTeacher" method="post"><!-- method="post" 추가 -->
                    <table id="TTNoMod" class="table">
                        <tr>
                            <th colspan="2" style="font-size: 15pt">기본정보</th>
                        </tr>
                        <tr>
                            <th>성별</th><td>여</td>
                        </tr>
                        <tr>
                            <th width="30%">연락처</th><td>000-000-0000</td>
                        </tr>
                        <tr>
                            <th>E-mail</th><td>aaaaa@aaaa.com</td>
                        </tr>
                        <tr>
                            <th>강의가능지역</th><td>서울시 / 마포구</td>
                        </tr>
                    </table>
                    <table id="TTModable" class="table">
                        <tr>
                            <th colspan="2" style="font-size: 15pt">상세정보</th>
                        </tr>
                        <tr>
                            <th width="30%">전공/교습가능취미</th><td><input id="TPhobby" type="text" class="form-control"></td>
                        </tr>
                        <tr>
                            <th>경력</th><td><input type="text" id="TPCarrier" class="form-control"></td>
                        </tr>
                    </table>
                    <table id="TTcareer" class="table">
                        <tr>
                            <th colspan="3" style="font-size: 15pt">진행중인강의</th>
                        </tr>
                        <tr>
                            <th>분류</th><th>제목</th><th>날짜</th>
                        </tr>
                        <tr>
                            <td>음악</td><td>왕초보 피아노교실</td><td>2017/06/20 ~ 2017/10/20</td>
                        </tr>
                    </table>
            </div>
            <div class="well">
                <div id="teacherWord">
                    <h2>선생님 소개</h2>
                    <div id="teacherWordCon">
                        <textarea rows="20" cols="135" id="TPword"></textarea>
                    </div>
                </div>
            </div>
            <button id="teacherPageModBtn"class="btn btn-block">수정완료</button>
        </form>

        <div class="well">
            <div id="teacherBoard">
                <table class="table">
                    <tr>
                        <td width="10%">apple08</td><td width="10%">2017/08/03</td>
                        <th colspan="2">선생님 넘 재미있어요!!! 담에도 듣고싶어요!!</th>
                        <td width="5%"><span class="glyphicon glyphicon-pencil"></span></td><td width="5%"><span class="glyphicon glyphicon-remove"></span></td>
                    </tr>
                    <tr>
                        <td width="10%">louisdaddy</td><td width="10%">2017/08/10</td>
                        <th colspan="2">취미반 듣고싶은데 피아도 아에 할 줄 몰라도 괜찮나요?</th>
                        <td width="5%"><span class="glyphicon glyphicon-pencil"></span></td><td width="5%"><span class="glyphicon glyphicon-remove"></span></td>
                    </tr>
                    <tr>
                        <td width="10%">coldbrew</td><td width="10%">2017/08/15</td>
                        <th colspan="2">수험생인데 지금부터 시작해도 안늦나요?</th>
                        <td width="5%"><span class="glyphicon glyphicon-pencil"></span></td><td width="5%"><span class="glyphicon glyphicon-remove"></span></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
   
</div>
		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
</div>
</body>


</html>