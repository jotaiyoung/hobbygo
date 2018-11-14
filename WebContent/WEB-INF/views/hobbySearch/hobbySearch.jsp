<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="hobbySearch_head.jsp"></jsp:include>
    
    <!-- seekbar script -->
    <link rel='stylesheet prefetch' href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css'>
    
    <meta property="og:title" content="JS Seekbar">
    <link rel="alternate" type="application/json+oembed" href="https://codepen.io/api/oembed?url=https://codepen.io/nevcanuludas/pen/nFfsb&amp;format=json" title="JS Seekbar">
    
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js'></script>
	<script src="js/Cross.js"></script>
    <script src="js/index.js"></script>
</head>

<script>
$(document).ready(function() {
	//버튼 추가
    var search_name = ["search_hobby", "search_location", "search_pay"];
    var search_hobby = ["운동", "음악", "미술", "사진", "꽃꽂이","게임","학문","요리","댄스","마술","퀼트","기타"];
    var search_location = ["서울", "부산", "대구", "인천", "광주","대전","울산","경기","강원","충북",
        "충남", "전북", "전남", "경북", "경남", "제주"];
    var search_pay = ["무료", "10만원대", "20만원대", "30만원대", "기타"];

    for (var i = 0; i < search_hobby.length; i++) {
        $(".side-panel.panel-body:eq(0)").append("<button class='btn btn-default'>" + search_hobby[i] + "</button>");
    }

    for (var i = 0; i < search_location.length; i++) {
        $(".side-panel.panel-body:eq(1)").append("<button class='btn btn-default'>" + search_location[i] + "</button>");
    }

    for (var i = 0; i < search_pay.length; i++) {
        $(".side-panel.panel-body:eq(2)").append("<button class='btn btn-default'>" + search_pay[i] + "</button>");
    }
    
 // 수업료를 조정할 수 있는 bar
    
    $("#slider").slider(
    {
        min: 0,
        max: 300000,
        step: 10000,
        change: showValue

    });
    $("#update").click(function () {
        $("#slider").slider("option", "value", $("#seekTo").val());

    });
    function showValue(event, ui) {
        $("#val").html(ui.value);
    }
  $("input[name=update]").click(function() {
      var pay = $("input[name=seekPay]").val();
      if (pay<0 || pay>300000) {
          alert("수업료는 0~300,000사이로 입력해주세요.");
      }
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
	        
	        
	    <div id="page">
            <div id="content">
                <div id="intro-head">
                    <!-- <img src="" alt="예제사진?"> -->
                    <div id="intro-body">
                        <h1> 강좌 찾아보기 </h1>
                           <div id="sidebar"><div>
                               <div class="well">
                    <h2>빠른검색</h2>
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">취미</div>
                            <div class="panel-body side-panel" id="HShobbybtns"></div>
                        </div>
                    </div>
                    <div class="panel-group side-panel">
                        <div class="panel panel-default">
                            <div class="panel-heading">위치</div>
                            <div class="panel-body side-panel" id="HSlocbtns"></div>
                        </div>
                    </div>
                    <div class="panel-group side-panel">
                        <div class="panel panel-default">
                            <div class="panel-heading">수업료</div>
                             <div id="paySlider">
                              <div id="slider"></div>
                               ~ <span id="val">0</span> <br>
                               		범위 지정  <input name="seekPay" id="seekTo" type="text" value="0"/>
                               <input id="update" type="button" name="update" value="적용" />
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="panel-group side-panel">
                        <div class="panel panel-default">
                            <div class="panel-heading">인원</div>
                            <select class="form-control" name="peopleSelect">
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                <option value="4">4명</option>
                                <option value="5">5명</option>
                                <option value="5">6명</option>
                                <option value="5">7명</option>
                                <option value="5">8명</option>
                                <option value="5">9명</option>
                                <option value="6">10명이상</option>
                            </select>
                        </div>
                    </div>
                   <div class="panel-group side-panel">
                        <div class="panel panel-default">
                            <div class="panel-heading">주당 횟수 (1주 기준)</div>
                            <select class="form-control" name="countSelect">
                                <option value="1">협의가능</option>
                                <option value="1">1회</option>
                                <option value="2">2회</option>
                                <option value="3">3회</option>
                                <option value="4">4회</option>
                                <option value="5">5회</option>
                                <option value="6">6회</option>
                                <option value="7">7회</option>
                            </select>
                    </div>
                    </div>
                               </div>
                            </div>
                            </div>
                         </div>
                </div>
            <div id="hobbyimg" class="well">
               <ul class="list-group">
                   <ul class="hobbyimgdetail">
                       <li><a href="classPage.search"><img src="images/hobbySearch_img/hobby.png"></a></li>
                       <li><li>취미: 기타</li>
                       <li>제목: 신나는 실뜨기 강좌</li>
                       <li>위치: 서울시 금천구</li>
                       <li>정보: 주2회 6만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미: 운동</li>
                       <li>제목: 우리동네 볼링왕</li>
                       <li>위치: 서울시 구로구</li>
                       <li>정보: 주2회 5만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:게임</li>
                       <li>취미:게임으로 배우는 축구</li>
                       <li>위치:부산시 중구</li>
                       <li>정보:주1회 3만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:요리</li>
                       <li>제목:나도 백종원!</li>
                       <li>위치:경기도 수원시</li>
                       <li>정보:주1회 3만원 </li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:기타</li>
                       <li>제목:농사하자! 장사하자!</li>
                       <li>위치:제주도 서귀포시</li>
                       <li>정보:주1회 5만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:기타</li>
                       <li>취미:건담프라모델</li>
                       <li>위치:인천시 연수구</li>
                       <li>정보:주1회 10만원이상</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:기타</li>
                       <li>제목:어린이 촉감교실</li>
                       <li>위치:경기도 의정부시</li>
                       <li>정보:주1회 3만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:학문</li>
                       <li>제목:태양계 행성 연구</li>
                       <li>위치:경기도 광주시</li>
                       <li>정보:주1회 0만원</li>
                   </ul>
                   <ul class="hobbyimgdetail">
                       <li><img src="images/hobbySearch_img/hobby.png"></li>
                       <li>취미:마술</li>
                       <li>제목:매직매직한 매직</li>
                       <li>위치:대구시 북구</li>
                       <li>정보:주1회 5만원</li>
                   </ul>
               </ul>
                <ul class="pager">
                    <li><a href="#">Previous</a></li>
                    <li><a href="#">Next</a></li>
                    <br><br>
                    <input id="searchbox" class="form-control" style="width:500px; display: inline-block">
                    <input type="button" class="btn" value="검색하기">
                </ul>
            </div>
            </div>
        </div>
	    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>      
    </div>
</body>
</html>