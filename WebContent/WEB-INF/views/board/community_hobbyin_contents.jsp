
<%@page import="org.sist3.Bean.HobbyinReplyBean"%>
<%@page import="org.sist3.Bean.HobbyinBoardBean"%>
<%@page import="org.sist3.Bean.StudentBean"%>
<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="hobbyin_head.jsp"></jsp:include>
</head>
<%
	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
	StudentBean s_member = (StudentBean)session.getAttribute("s_member");
	
	if(t_member!=null) {
		System.out.println(t_member.getT_id());
	} else if(s_member!=null) {
		System.out.println(s_member.getS_id());
	}
%>
<script src="js/Cross.js"></script>
<script>
    $(document).ready(function(){
		$("#board_contentsCls").click(function() {
			location.assign("main.hobbyIn");
		})		
		
		//좋아요 부분 수정하기
		var aa = parseInt($(".like2").text());
		
		$(".like1").click(function() {
			if($(this).css("color")=="rgb(114, 114, 114)") {
				$(this).css({"color":"red"});
				++aa;
			} else {
				$(this).css({"color":"rgb(114, 114, 114)"});
				aa--;
			}
			$(".like2").text(aa);
		})
		//댓글 권한
		$("form[name='reply_write'] textarea").click(function() {
			<%
            	if(t_member==null && s_member == null) {
            %>
            	alert("댓글작성은 로그인 후 이용가능합니다!");
            	return;
            <%
            	}
            %>
		})
		
		 $("form[name='reply_write']").submit(function() {
			event.preventDefault();
			if($("form[name='reply_write'] textarea").val() == "") {
				alert("댓글내용을 입력해주세요!");
				return;
			}
			this.action="reply.hobbyIn";
			this.method="POST";
			this.submit();
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
	
    <div id="board_page">
    	<div class="boardContentsWrap">
    	<%
    		if(request.getAttribute("board")!= null && request.getAttribute("reply") != null) {
    			//게시글 관련 bean
    			HobbyinBoardBean bean = (HobbyinBoardBean)request.getAttribute("board");
    			String boardWriter = (bean.getB_in_t_writer() != null) ? 
										bean.getB_in_t_writer() : bean.getB_in_s_writer();
    			//댓글 관련 bean
    			ArrayList<HobbyinReplyBean> reply = (ArrayList<HobbyinReplyBean>)request.getAttribute("reply");
    			
    			String cate = bean.getB_in_category();
				String category = "";
				if(cate.equals("C00")) category = "운동";
				else if(cate.equals("C01")) category = "음악";
				else if(cate.equals("C02")) category = "미술";
				else if(cate.equals("C03")) category = "사진";
				else if(cate.equals("C04")) category = "꽃꽂이";
				else if(cate.equals("C05")) category = "게임";
				else if(cate.equals("C06")) category = "학문";
				else if(cate.equals("C07")) category = "요리";
				else if(cate.equals("C08")) category = "댄스";
				else if(cate.equals("C09")) category = "퀼트";					
    	%>
    		<div class="boardSpanLeft">
	    		<span class="title"><%=bean.getB_in_title() %></span>
	    		<span class="cate"> | <%=category %></span>
    		</div>
    		<div class="boardSpanRight">
	    		<span class="time"><%=bean.getB_in_time() %></span>
	    		<%
	    			if(t_member!=null) {
	    				if(t_member.getT_id().equals(boardWriter)) {
	    		%>
		    	<span> | <a href="modify.hobbyIn?no=<%=bean.getB_in_no() %>&modifyType=modify">수정</a> | </span>
		    	<span><a href="delete.hobbyIn?deleteType=board&deleteNo=<%=bean.getB_in_no()%>">삭제</a> </span>	    		
	    		<%
	    				}
	    			} else if(s_member!=null) {
	    				if(s_member.getS_id().equals(boardWriter)) {
	    		%>
	    		<span> | <a href="modify.hobbyIn?no=<%=bean.getB_in_no() %>&modifyType=modify">수정</a> | </span>
		    	<span><a href="delete.hobbyIn?deleteType=board&deleteNo=<%=bean.getB_in_no()%>">삭제</a> </span>	  
	    		<%
	    				}
	    			}
	    		%>
    		</div>
    		<br />
    		<hr />
    		<span class="writer"><%=boardWriter %></span>
            <div class="boardContentsText"><%=bean.getB_in_content() %></div>
                <div class="boardInfo">
			    	<span>조회수</span><span class="hit"><%=bean.getB_in_hit() %> |</span>
			    	<span>댓글</span><span><%=reply.size()%> |</span>
			    	<span class="like1">♥좋아요</span><span class="like2"> <%=bean.getB_in_popular() %></span>
	    		</div>
                <div class="reply">
			<%
				for(int i=0; i<reply.size(); i++) {
					HobbyinReplyBean replyBean = reply.get(i);
					String replyWriter = (replyBean.getB_reply_s_writer() != null) ? 
											replyBean.getB_reply_s_writer() : replyBean.getB_reply_t_writer();
			%>
					<div class="reply_detail">
                		<div class="boardSpanLeft">
		                	<span><%=replyWriter %></span>
		                	<span><%=replyBean.getB_reply_time() %></span>
	                	</div>
					    	<span class="boardSpanRight">
					    	<%
				    			if(t_member!=null) {
				    				if(t_member.getT_id().equals(replyWriter)) {
				    		%>
					    				<a href="delete.hobbyIn?deleteType=reply&deleteNo=<%=bean.getB_in_no()%>&deleteTime=<%=replyBean.getB_reply_time()%>">삭제</a>	    		
				    		<%
				    				}
				    			} else if(s_member!=null) {
				    				if(s_member.getS_id().equals(replyWriter)) {
				    		%>
				    					<a href="delete.hobbyIn?deleteType=reply&deleteNo=<%=bean.getB_in_no()%>&deleteTime=<%=replyBean.getB_reply_time()%>">삭제</a>  
				    		<%
				    				}
				    			}
				    		%>
					    	</span>
	                	<div class="reply_content">
	                		<p><%=replyBean.getB_reply_content() %></p>
	                	</div>
                	</div>
                <hr />	
			<%		
				}
			
			%>
                	<div class="reply_write">
                		<form name="reply_write">
                			<textarea name="r_content"></textarea>
                			<input type="hidden" name="boardNo" value="<%=bean.getB_in_no() %>"/>
                			<input type="submit" class="btn btn-default" value="등록">
                		</form>
                	</div>
                	<input type="button" id="board_contentsCls" class="btn" value="목록보기">
                </div>
    	<%
    		}
    	%>
        </div>
    </div>
	    <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>    
</div>
</body>
</html>