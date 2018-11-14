<%@page import="org.sist3.Bean.CartBean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="myStudent_head.jsp" flush="false"></jsp:include> 
    <link href="css/MyPage_Student.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script>
<%	
if(request.getAttribute("CartDe")!=null){
	request.removeAttribute("CartDe"); // 이걸 해줘야 창이 뜸
	
%>
alert('삭제하였습니다');

<%	
}
%>
</script>
<body>
	    <div id="wrapper" class="container"  style="width:100%;">
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
        <div id="page">
      <!--  <form action="main.myStudent"> -->
            <div id="content">
                <div id="intro-head">
                           <div id="cart">
                            <h2>장바구니</h2>
                             <div class="CartBtn">
                              <a href="hobby.search"><button name="cartPlus" class="btn btn-default">추가하기</button></a>
                              <br>
                               <br>
                              </div>
                           <table class="table table-striped" width="100%">
                        <tr>
                            <td width="5%">NO</td>
                            <td width="15%">강좌</td>
                            <td width="10%">강사님</td>
                            <td width="15%">위치</td>
                            <td width="15%">주당횟수</td>
                            <td width="10%">강의료</td>
                            <td width="10%">삭제</td>
                            <td width="10%">신청하기</td>
                        </tr>
        <%
   
 		if(request.getAttribute("Cart") != null) {
 		
 		ArrayList<CartBean> list = (ArrayList<CartBean>)request.getAttribute("Cart");	
 		

        for (int i = 0; i < list.size(); i++) {
        //request.setAttribute("No", list.get(i).getChecked());
        	
        %>
        
						<tr>
                            <td><%= i+1 %></td>
                            <td><%=list.get(i).getLecture() %></td>
                            <td><%=list.get(i).getTeachername()  %></td>
                            <td><%=list.get(i).getLecture_location() %></td>
                            <td><%=list.get(i).getLecture_time() %></td>
                            <td><%=list.get(i).getLecture_money() %></td>
                            <td><a href="cartdelete.myStudent?No=<%= list.get(i).getChecked()%>"><button class="btn btn-default">삭제</button></a></td>
                         	<td><a href="sinchung.myStudent?No=<%= list.get(i).getChecked()%>"><button class="btn btn-default">신청하기</button></a></td>
                         </tr>     
                         
                      
                        
    <%	
			} //end of for
 		} //end of if
	%>
                    </table>         
                    </div>
                  </div>
                </div>
       
     
            </div>
	        	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>
      </div>	


</body>
</html>