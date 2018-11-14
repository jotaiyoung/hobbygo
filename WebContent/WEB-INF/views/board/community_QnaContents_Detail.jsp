<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
        <div id="board_page" style="margin : 0 auto">
                <div id="board_qna_wrap">
                    <table class="table">
                    <%if (session.getAttribute("s_member")!=null || session.getAttribute("admin")!=null || session.getAttribute("t_member")!=null) {
						if (request.getAttribute("qnaIdx") != null) {
							StudentBean s_member = (StudentBean)session.getAttribute("s_member");
							QnABoardBean boardlist = (QnABoardBean)request.getAttribute("qnaIdx");
						%>
                        <tr>
                            <th width="10%"> 카테고리 </th>
                            <td width="90%"><%if (boardlist.getB_category().equals("1")) {
								%> 가입관련 <%
								} else if (boardlist.getB_category().equals("2")) {
								%> 이용관련 <%
								} else if (boardlist.getB_category().equals("3")) {
								%> 강좌개설 <%
								} else if (boardlist.getB_category().equals("4")) {
								%> 기타 <%
								}%></td>
                        </tr>
                        <tr>
                            <th> 글쓴이 </th>
                            <td><% if(boardlist.getB_s_writer()!=null) {
                            	%> <%=boardlist.getB_s_writer() %> <%
                            	} else {
                            	%> <%=boardlist.getB_t_writer() %>
                            	<%} %>
                            	</td>
                        </tr>
                        <tr>
                            <th> 제목 </th>
                            <td><%=boardlist.getB_title() %></td>
                        </tr>
                        <tr>
                            <th> 작성일 </th>
                            <td><%=boardlist.getB_time()%></td>
                        </tr>
                        <tr>
                            <th> 내용 </th>
                            <td><%=boardlist.getB_content() %>
                            </td>
                        </tr>
                    </table>
                   
                     <% if (boardlist.getB_reply()!=null) {
                    	 if(session.getAttribute("admin")!=null){
                     %>
                     <br>
                     <hr>
                     <br>
                     <h2> 답변 </h2>
                     <br>
                     <br>
                        <table class="table">
                            <tr>
                                <th width="10%">글쓴이</th>
                                <td width="90%">관리자</td>
                            </tr>
                            <tr>
                                <th>작성일</th>
                                <td><%= boardlist.getB_reply_date()%></td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td><%=boardlist.getB_reply() %></td>
                            </tr>
                        </table>
                        <input type="button" class="btn" id="DeleteBtn" value="삭제하기" style="float:right; margin : 5px; color:black;" onclick="fn_delete();">
                         <script>
		                  function fn_delete() {
		                	  var con = confirm("게시물을 정말로 삭제하시겠습니까?");
		                	  if (con==true) {
		                		  location.href= "Q&Adelete.board?b_no=<%=boardlist.getB_no()%>";
		                	  }
		                	  else {
		                		  return;
		                	  }
		                  }
		                  </script>
                       
                   <% } // reply != null조건
                     } // request 조건
					} // session 조건 
					}%>
                  <%
                  if(session.getAttribute("admin")!=null)  {
                	  if (request.getAttribute("qnaIdx")!=null) {
                		  QnABoardBean boardlist = (QnABoardBean)request.getAttribute("qnaIdx"); 
							if(boardlist.getB_reply()==null) {
                  %>
                  				<a href="adminReply.board?b_no=<%=boardlist.getB_no()%>"><input type="button" class="btn" id="QnaBoardRepBtn" value="답변하기" style="float:right; margin : 5px;"></a>
                  				<input type="button" class="btn" id="DeleteBtn" value="삭제하기" style="float:right; margin : 5px; color:black;" onclick="fn_delete();">
                         <script>
		                  function fn_delete() {
		                	  var con = confirm("게시물을 정말로 삭제하시겠습니까?");
		                	  if (con==true) {
		                		  location.href= "Q&Adelete.board?b_no=<%=boardlist.getB_no()%>";
		                	  }
		                	  else {
		                		  return;
		                	  }
		                  }
		                  </script>
                  <% }}} %>
                       <a href="Q&A.board"> <input type='button' class="btn" id="QnaBoardList" value="목록으로 돌아가기" style="float:right; margin : 5px;"> </a>
                      <br>
                      <br>
                      <br>

                   
                      </div>
                </div>
	           <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
            </div>
</body>
</html>