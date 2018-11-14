<%@page import="org.sist3.Bean.HobbyinBoardBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="hobbyin_head.jsp"></jsp:include>
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
            $("#boardWriteBtn").click(function() {
            	<%
            		if(session.getAttribute("t_member")!=null || session.getAttribute("s_member") != null) {
            	%>
            		location.assign("write.hobbyIn");
            	<%
            		} else {	
            	%>
	            	alert("로그인 이후 이용 가능합니다.");
	    			return;
            	<%
            		}
            	%>
            })
    	})
    
    </script>
<body>
	    <div id="wrapper" class="container" style="width:100%">
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

                <div class="row" id="board_wrap">
                    <div id="board_con">
                        <table class="table">
                        	<tr>
                        		<td>No</td>
                        		<td width="40%">제목</td>
                        		<td>작성자</td>
                        		<td width="22%">작성일</td>
                        		<td>조회수</td>
                        		<td>추천수</td>
                        	</tr>
                        	<%
                        		if(request.getAttribute("list") != null) {
                        			List<ArrayList<HobbyinBoardBean>> listAll = 
                        					(List<ArrayList<HobbyinBoardBean>>)request.getAttribute("list");
                        			ArrayList<HobbyinBoardBean> list = listAll.get(0);
                        			
                        			//페이징 처리부분
                        			int totalRecordSize = list.size();
                        			int recordPerPage = 10;
                        			int pagePerBlock = 5;
                        			int totalPageSize = (int)Math.ceil((double)totalRecordSize/recordPerPage);
                        			int curPage = 0;
                        			if(request.getAttribute("curPage")!= null) {
                        				curPage = (Integer)request.getAttribute("curPage");
                        			}
                        			int curBlock = 0;
                        			if(request.getAttribute("curBlock")!=null) {
                        				curBlock = (Integer)request.getAttribute("curBlock");
                        			}
                        			int beginNum = curPage * recordPerPage;
                        			int beginPageNum = curBlock * pagePerBlock;
                        			
                        			for(int i=beginNum; i<beginNum+recordPerPage; i++) {
                        				if(i>=totalRecordSize) break;
                        				HobbyinBoardBean bean = list.get(i);
                        				String writer = "";
                        				if(bean.getB_in_s_writer() != null) writer=bean.getB_in_s_writer();
                        				else writer=bean.getB_in_t_writer();
                        	%>
                        		<tr>
                        			<td><%=bean.getB_in_no() %></td>
                        			<td>
                        				<a href="content.hobbyIn?no=<%=bean.getB_in_no() %>"><%=bean.getB_in_title() %></a>
                        			</td>
                        			<td><%=writer %></td>
                        			<td><%=bean.getB_in_time() %></td>
                        			<td><%=bean.getB_in_hit() %></td>
                        			<td><%=bean.getB_in_popular() %></td>
                        		</tr>
                        	<%
                        			}
                        	%>
                        	
                        	
                        	<tr>
                        		<td colspan="6" align="right">
                        			<input type='button' class="btn" id="boardWriteBtn" value="질문하기">
                        		</td>
                        	</tr>
                        </table>
                        <div class="boardUnderBar">
	                            <p  class="paging">
	                        <%
                        			if(curBlock > 0) {
                        	%>
                        				<span><a href="main.hobbyIn?curPage=<%=(curBlock-1)*pagePerBlock %>&curBlock=<%=curBlock-1%>">◀</a></span>
                        	<%			
                        			}
                        			for(int i=beginPageNum; i<beginPageNum+pagePerBlock; i++) {
                        				if(i > totalPageSize-1) break;
                        	%>
                        				<span><a href="main.hobbyIn?curPage=<%=i %>&curBlock=<%=curBlock%>"><%=i+1 %> </a></span>|
                        	<%
                        			}
                        			if(curBlock < totalPageSize / pagePerBlock) {
                        	%>
                        				<span><a href="main.hobbyIn?curPage=<%=(curBlock+1)*pagePerBlock %>&curBlock=<%=curBlock+1%>">▶</a></span>
                        	<%
                        			}
                        	%>
	                            </p>
                            
	                            <select>
	                                <option selected="selected">카테고리</option>
	                                <%
	                                	String[] hobby = {"운동", "음악", "미술", "사진", "꽃꽂이", "게임", "학문", "요리", "댄스", "퀼트"};
	                                	for(int i=0; i<hobby.length; i++) {
	                                %>
	                                	<option value="<%="C0"+i%>"><%=hobby[i] %></option>
	                                <%
	                                	}
	                                %>	
	                            </select>
	
	                            <input type="box" id="boardbox">
	                            <input type="button" id="boardSearchBtn" class="btn" value="검색">
                        </div>
                    </div>
                    <div id="board_right">

                        <div class="board_div_right">
                        	<div class="panel panel-default">
                        		<div class="panel-heading">오늘의 추천질문</div>
                        		<div class="panel-body">
                        		<%
                        			ArrayList<HobbyinBoardBean> newList = listAll.get(2);
                        				for(int i=0; i<newList.size(); i++) {
                        					HobbyinBoardBean today = newList.get(i);
                        		%>
                        					<p><a href="content.hobbyIn?no=<%=today.getB_in_no()%>"><%=today.getB_in_title() %></a></p>
                        		<%
                        				}
                        		%>
                        		</div>
                        	</div>
                        </div>

                        <div class="board_div_right">
                            <div class="panel panel-default">
                        		<div class="panel-heading">오늘의 새질문</div>
                        		<div class="panel-body">
                        		<%
                        			ArrayList<HobbyinBoardBean> hotList = listAll.get(1);
                        				for(int i=0; i<hotList.size(); i++) {
                        					HobbyinBoardBean hot = hotList.get(i);
                        		%>
                        					<p><a href="content.hobbyIn?no=<%=hot.getB_in_no()%>"><%=hot.getB_in_title() %></a></p>
                        		<%
                        				}
                        		%>
                        		
                        		</div>
                        	</div>
                        </div>

                        
                    </div>
                    <%
	                   } //end of if
	                %>
                    
                </div>
            </div>
	            	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
    </div>
</body>
</html>