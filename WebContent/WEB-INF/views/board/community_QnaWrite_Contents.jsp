<%@page import="org.sist3.Bean.StudentBean"%>
<%@page import="org.sist3.Bean.QnABoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="board_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
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
	    <div id="wrapper" class="container" style="width:100%">
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
        
        <div id="board_page"  style="margin : 0 auto;">

                <div id="board_qna_wrap">
                 <form name="frm" method="POST" action="Q&A.board">
                    <table class="table">
                    <%if (session.getAttribute("s_member")!=null || session.getAttribute("t_member")!=null) {
						if (request.getAttribute("qnaAttribute") != null) {
							StudentBean s_member = (StudentBean)session.getAttribute("s_member");
							QnABoardBean boardlist = (QnABoardBean)request.getAttribute("qnaAttribute");
							
						%>
                        <tr>
                            <th width="10%">카테고리</th>
                            <td width="90%"><%if (boardlist.getB_category().equals("1")) {
								%>가입관련<%
								} else if (boardlist.getB_category().equals("2")) {
								%>이용관련<%
								} else if (boardlist.getB_category().equals("3")) {
								%>강좌개설<%
								} else if (boardlist.getB_category().equals("4")) {
								%>기타<%
								}%></td>
                        </tr>
                        <tr>
                            <th>글쓴이</th>
                            <td><% if(boardlist.getB_s_writer()!=null) {
                            	%> <%=boardlist.getB_s_writer() %> <%
                            	} else {
                            	%> <%=boardlist.getB_t_writer() %>
                            	<%} %>
                            	</td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><%=boardlist.getB_title() %></td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td><%=boardlist.getB_time()%></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td><%=boardlist.getB_content() %>
                            </td>
                        </tr>
                    </table>
                    <%}
                    }%>
                    </form>
                    <input type='button' class="btn" id="QnaBoardList" value="목록으로" style="float:right" onclick="fn_list()">
                    <script>
                    function fn_list() {
                    	var f = document.frm;
                    	f.submit();
                    }
                    </script>
                    </div>
                </div>
	            	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
            </div>
</body>
</html>