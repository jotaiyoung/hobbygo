<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<jsp:include page="board_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script src="js/sideBar.js"></script>
<script>
    $(document).ready(function(){
        var tmp;
        $('.paging>span').click(function () {

            $(this).css({
                color:'red'
            });
            if(tmp != null){
                tmp.css({
                    color:'black'
                })
            }
            tmp=$(this);
        })

        var flag = false;
        $('.p2').click(function(){
            $('#board_contents').load('hobbyin_contents.board');
            $('#board_contents').animate({
                height:700+'px',
                width:900+'px'
            })
            $('#board_contents').show();

        })

    })

</script>
<html>

	<body>
	<jsp:include page="sideBar.jsp" flush="false"></jsp:include>
	    <div id="wrapper" class="container">
	        <div id="navbar-up-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"></jsp:include>
	        </div>
	        <div id="header">
	            <div id="logo">
	                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
	            </div>
	        </div>
	        <div id="navbar-menu-specialLoad">
	        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"></jsp:include>
	        </div>
	
		<div id="banner">
        </div>
	            <div id="board_page">
	                <div class="row" id="FqaBoard_wrap">
	                	<ul id="Fqa_nav">
		                    <li><a href="#">회원관련</a></li>
		                    <li><a href="#">학생질문</a></li>
		                    <li><a href="#">강사질문</a></li>
		                    <li><a href="#">기타</a></li>
		                </ul>
	                        <div class="FqaBoard_div">
	                            <h3>강사가입에 필요한 서류</h3>
	                            <div class="board_div_con">
	                                본 사이트에서 강사로 가입하려고 하신다면 소정의 서류를 제출해야만 합니다.
	                                자신의 경력을 증명할 수 있는 자료들이 필요합니다.
	                                대학을 다녔던 학력증명이나 실무에서 일했던 분들은 자신의 경력을 증명할 수 있는 자료를 준비하셔야 합니다.
	                                강사로서 활동하시고 싶은 분들에게는 다분히 번거로운 일입니다만 준비를 부탁드립니다.
	
	                            </div>
	                        </div>
	                        <div class="FqaBoard_div">
	                            <h3>강사로서의 권한</h3>
	                            <div class="board_div_con">
	                                본 사이트에서 강사는 슈퍼유저로서 활동하실 수 있습니다.
	                                경력이 증명되시어 강사로서 가입이 완료 되시면 첫번째로 취미강좌를 개설하실 수 있습니다.
	                                강좌를 개설하시어 여러가지 수익을 창출하시기 위해선 우선 경력을 증명하셔야 합니다.
	                                경력을 증명하는 방법은 강사가입에 필요한 서류 를 참고하시면 됩니다.
	                            </div>
	                        </div>
	                        <div class="FqaBoard_div">
	                            <h3>강좌 개설하기</h3>
	                            <div class="board_div_con">
	                                강좌를 개설하기 위해선 우선 취미검색 탭으로 접속하시면 됩니다.
	                                취미검색 탭의 하단부에 강좌개설을 클릭하시면 아래의 화면과 같은 창을 보실 수 있습니다.
	                                우선 화면의 빈칸을 빠짐없이 채우시길 바랍니다. 빈칸으로 둬도 상관은 없으나 최대한 채우는 편이 학생들에게 안정감을 주고 충만한 정보를 제공할 수 있기 때문에 수강율이 높습니다.
	                            </div>
	                        </div>
	
	                        <div class="boardUnderBar">
	                            <p  class="paging">
	                                <span>◀</span>
	                                <span>1 </span>|
	                                <span>2 </span>|
	                                <span>3 </span>|
	                                <span>4 </span>|
	                                <span>5 </span>
	                                <span>▶</span>
	                            </p>
	                            <select>
	                                <option selected="selected">카테고리</option>
	                                <option>제목</option>
	                                <option>이름</option>
	                                <option>내용</option>
	                            </select>
	                            <input type="box" id="boardbox">
	                            <input type="button" id="boardSearchBtn" class="btn" value="검색">
	                        </div>
	                    </div>
	
	                    <div id="board_contents"></div>
	                </div>
	            		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
	            </div>
	            

	</body>
</html>

