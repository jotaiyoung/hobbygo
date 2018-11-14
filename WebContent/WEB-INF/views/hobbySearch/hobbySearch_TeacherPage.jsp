<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="hobbySearch_head.jsp"></jsp:include>
    <link href="http://api.typolink.co.kr/css?family=SJGreenGothicR:400" rel="stylesheet">
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
	$(document).ready(function() {
		//파일 없음.
        $("button[name=modify_teacher]").click(function() {
            location.href="mypage_teacherpage_modify.html"
        })
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
	        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"></jsp:include>
	        </div>
	        <div id="header">
	            <div id="logo">
	                <h1><a href="#"><img src="images/index_img/logo.png"></a></h1>
	            </div>
	        </div>
	        <div id="navbar-menu-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"></jsp:include>
	        </div>
	        
        <!-- <div id="banner">
            <div id="myCarousel" class="carousel slide" data-ride="carousel"></div>
        </div> -->

    <div id="teacherPageWrap">
        <div class="well">
            <!--선생님 개인사진/코멘트-->
            <div id="teacherPersonal">
                <div id="teacherPersonalOutLine">
                    <div id="teacherImg"><img src="images/hobbySearch_img/tc.jpg"></div>
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
                        <th width="30%">전공/교습가능취미</th><td>피아노</td>
                    </tr>
                    <tr>
                        <th>경력</th><td>3년</td>
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
        </div>
        <div class="well">
            <div id="teacherWord">
                <h2>선생님 소개</h2>
                <div id="teacherWordCon">
                    마포구의 유일한 피아노쌤 노고산동 피아노쌤 홍길동입니다!<br>
                    만나서 반가워요!<br>
                    저의 학습대상과 목표는 다음과 같습니다<br><br>
                    1. 중, 고등학생 입시반<br>
                     - 저의 입시경험으로 입시를 위해 준비를 하는 학생들에게 최선의 레슨을 할 수 있습니다. 입시곡으로 좋은 노래를 추천하며 철저하게 연습하여
                    성공적인 입시로 이끌 자신이 있습니다.<br><br>
                    2. 초등학생<br>
                     - 어릴 때 부터 피아노를 가르치면 감성과 두뇌발달에 아주 좋다는 연구결과가 있습니다. 학원에서는 할 수 없는 밀도높은 집중교육으로
                    아이들의 실력을 높이며, 흥미를 잃기 쉬운 초등학생들을 위해 재미있는 교육법을 항상 연구하고 있습니다.<br><br>
                    3. 성인 취미반<br>
                     - 취미가 없으시다고요? 피아노를 배워 보는 것은 어떨까요? 지금까지 음악과 관련없는 삶을 살아 오셨다고 하더라도 차근차근 처음부터
                    가르쳐 드립니다.
                </div>
            </div>
        </div>
        <a href="hobbyReview 페이지 주소 넣어주세요!"><button id="teacherPageModBtn"class="btn btn-block">후기보러가기</button></a>

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
	    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>        
    </div>
</body>
</html>