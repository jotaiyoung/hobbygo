<%@page import="org.sist3.Bean.QnABoardBean"%>
<%@page import="java.util.ArrayList"%>
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
        <%if (session.getAttribute("s_member")!=null || session.getAttribute("t_member")!=null) {%>
	       $("tr").each(function(idx,item) {
	    	   $(item).click(function() {
	    		  
	    		   $("input[name=urlNo]").val($("tr:nth-child("+(idx+1)+")>td:nth-child(1)").text());
	    		   var b_no = $("input[name=b_no]").val();
	    		   
	    		   $('#passwordArea').load('QnAPassword.board?b_no='+b_no);

	   	    	   $('#passwordArea').animate({
	   	    	    height:50+'px', 	       
	   	    	})
	   	    	$('#passwordArea').show();
	    	   })
	       })
	       <% }  else if (session.getAttribute("admin")!=null) {%>
	       $("tr").each(function(idx,item) {
	    	   $(item).click(function() {
	    		
	    		   $("input[name=urlNo]").val($("tr:nth-child("+(idx+1)+")>td:nth-child(1)").text());
	    		   var b_no = $("input[name=urlNo]").val();
	    		   
	    		location.href="QnaContentDetail.board?b_no="+b_no;
	    	   })
	       })
	       <% } %>
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
            <div id="board_page" style="margin : 0 auto;">
            <div style="margin:0 auto;">Q&A게시판은 수정 및 삭제가 불가능합니다. 또한 1:1 질문 게시판으로 비밀번호 입력은 필수입니다!
            <br> 비밀번호는 문자와 숫자가 조합된 것을 권장하고있습니다 :)</div>
            <br>
            	<input type="hidden" name="urlNo" value=""/>
            <div id="passwordArea" style="position:absilute;"></div>

                <div id="board_qna_wrap">
                <br>
                    <table class="table" id="BoardTable">
                        <tr>
                            <th width="10%">글 번호</th>
                            <th width="40%">제목</th>
                            <th width="20%">작성일</th>
                            <th width="20%">글쓴이</th>
                            <th width="10%">답변여부</th>
                        </tr>
                        <%
                        	if (request.getAttribute("boardList")!=null) {
  
                        		ArrayList<QnABoardBean> list = (ArrayList<QnABoardBean>)(request.getAttribute("boardList"));
                        		
                        		int totalRecordSize = list.size();
                        		int recoredPerPage = 10;
                        		int pagePerBlock = 5;
                        		int totalPageSize = (int)Math.ceil((double)totalRecordSize/recoredPerPage);
                        		int curPage = 0;
                        		if(request.getAttribute("curPage") != null) {
                        			curPage = Integer.parseInt(request.getAttribute("curPage")+"");
                        		}
                        		
                        		int curBlock = 0;
                        		if(request.getAttribute("curBlock") != null) {
                        			curBlock = Integer.parseInt(request.getAttribute("curBlock")+"");
                        		}
                        		
                        		int beginNum = curPage*recoredPerPage; //0 * 10 = 0
                        		int beginPageNum = curBlock * pagePerBlock; //0 * 5 = 0
                        		for(int i=beginNum; i<beginNum+recoredPerPage; i++) {
                        			if(i >= totalRecordSize) break;
                        			QnABoardBean vo = list.get(i) ;
                        			%>
                        			<tr>
                        			<td><%=vo.getB_no() %></td>
                        			<td class="title_td" ><%=vo.getB_title() %>
                        			<td><%=vo.getB_time() %></td>
                        			<td><% if(vo.getB_s_writer()!=null) {
                        				%> <%String swriter_ = vo.getB_s_writer();
                        				int length = swriter_.length();
                        				String swriter = swriter_.substring(0,1);%>
                        				<%=swriter%>
                        				<%for (int j=1; j<length; j++) {%>*<%}%> 
                        				<% } else if (vo.getB_t_writer()!=null){
                        				%> <%String twriter_ = vo.getB_t_writer();
                        				String twriter = twriter_.substring(0,1);
                        				int length = twriter_.length();
                        				%>
                        				<%=twriter%>
                        				<%for (int j=1; j<length; j++) { %>*<%} %>
                        				<%} %>
                        				</td>
                        			<td><%=vo.getB_check() %></td>
                        			</tr>
                        		<%} %>
                    </table>
                    <div class="boardUnderBar">
                        <%

		out.println("<hr>");
		if(curBlock > 0) {
%>
		<a href="Q&A.board?curBlock=<%=curBlock-1%>&curPage=<%=(curBlock-1)*pagePerBlock%>"> ◀ </a>
<%
		}
		for(int i=beginPageNum; i<beginPageNum+pagePerBlock; i++) {
			if(i > totalPageSize-1) break;
%>
			[<a href="Q&A.board?curPage=<%=i %>&curBlock=<%=curBlock%>"><%=i %></a>]
<%
		}
		if(curBlock < totalPageSize / pagePerBlock) {
%>
		<a href="Q&A.board?curBlock=<%=curBlock+1%>&curPage=<%=(curBlock+1)*pagePerBlock%>"> ▶ </a>
<%
		}
	} // end of if
%>
<br>
						<form name="SearchFrm" method="POST" action="boardSearch.board">
                        <select name="boardSearchSelect">
                            <option value="0">카테고리</option>
                            <option value="1">가입관련</option>
                            <option value="2">이용관련</option>
                            <option value="3">강좌개설</option>
                            <option value="4">기타</option>
                        </select>
                        <input type="text" id="boardbox" name="boardbox">
                        <input type="button" id="boardSearchBtn" class="btn" value="검색" onclick="fn_search()">
                        </form>
                        <script>
                        function fn_search() {
                        	var f = document.SearchFrm;
                        	if ($("select[name=boardSearchSelect]").val()=="0") {
 							   alert("질문의 카테고리를 선택해주세요!");
 							   return;
 							}
                        	if ($("input[name=boardbox]").val()=="") {
                        		alert("검색어를 입력해주세요!");
                        		return;
                        	} f.submit();
                        }
                        </script>
                    </div>
                   <input type='button' class="btn" id="QnaBoardWriteBtn" value="질문하기" style="float:right" onclick="location.href='QnaWrite.board'">
                </div>
            </div>
		    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>         
    </div>
</body>
</html>