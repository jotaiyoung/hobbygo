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
	$(document).ready(function() {
		$('#board_qna_rep_con').css({
            display:'none'
        })

        $('#board_qna_rep').css({
            display:'none'
        })

        $('#QnaBoardRepBtn').click(function () {
            $('#board_qna_rep_con').hide();
            $('#board_qna_rep').fadeIn();
        })
        $('#QnaBoardRepWirte').click(function(){
            $('#board_qna_rep_con').fadeIn();
            $('#board_qna_rep').hide();
        })

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
	})
</script>
<body>
	<jsp:include page="sideBar.jsp" flush="false"></jsp:include>
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
	
		<div id="banner">
        </div>
        
        <div id="board_page">

                <div id="board_qna_wrap">
                    <table class="table">
                        <tr>
                            <th width="10%">번호</th>
                            <td width="90%">1</td>
                        </tr>
                        <tr>
                            <th>카테고리</th>
                            <td>회원관련</td>
                        </tr>
                        <tr>
                            <th>글쓴이</th>
                            <td>powerover</td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>질문드립니다!</td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>2017/07/11</td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!
                                강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!
                                강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!강사로 회원가입을 하고 싶은 데 어떤 서류를 제출하면 제 경력을 증명할 수 있을까요?
                                꼭 알고 싶어요!!
                            </td>
                        </tr>
                    </table>
                    <!--숨겨두다가 관리자한테만 보이는 버튼-->
                        <input type='button' class="btn" id="QnaBoardRepBtn" value="답변하기" style="float:right">
                    <br><br>
                    <div id="board_qna_rep_con">
                        <table class="table">
                            <tr>
                                <th width="10%">답변번호</th>
                                <td width="90%">1</td>
                            </tr>
                            <tr>
                                <th>글쓴이</th>
                                <td>관리자</td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td>잘 읽어보았습니다</td>
                            </tr>
                            <tr>
                                <th>작성일</th>
                                <td>2017/07/12</td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>잘하면 됩니다</td>
                            </tr>
                        </table>
                        <input type='button' class="btn" id="QnaBoardRepDel" value="삭제하기" style="float:right">
                    </div>

                    <div id="board_qna_rep">
                        <table class="table">
                            <tr>
                                <th width="10%">답변번호</th>
                                <td width="90%">1</td>
                            </tr>
                            <tr>
                                <th>글쓴이</th>
                                <td>관리자</td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td><input type="text" style="width:700px"></td>
                            </tr>
                            <tr>
                                <th>작성일</th>
                                <td>2017/07/12</td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td><textarea rows="10" cols="120"></textarea></td>
                            </tr>
                        </table>

                        <input type='button' class="btn" id="QnaBoardRepWirte" value="작성하기" style="float:right">
                    </div>
                </div>
	            	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
            </div>
    </div>

</body>
</html>