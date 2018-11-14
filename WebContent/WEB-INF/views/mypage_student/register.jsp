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
            <div id="content" style="padding-left: 180px;">

                <div id="intro-head">
                    <div class="intro-body" style="height:400px; padding-left:35px;">
 		<%
   
 		if(request.getAttribute("register") != null) {
 		
 		ArrayList<CartBean> list = (ArrayList<CartBean>)request.getAttribute("register");	
 		
 		//System.out.println("경로"+request.getContextPath());
 		
        for (int i = 0; i < list.size(); i++) {
        
        //System.out.println("경로2"+list.get(i).getS_photo());
        %>
                        <div class="intro-body-content">
                          
                          <div class="registerList">
                           <h2>강좌정보</h2>
                           <div id="RegistList">
                           <div id="classMain">
       
                                <div class="classList">
                                    <button class="closeBtn"></button>
                                    <div class="classImg">
                                    <img src="<%=request.getContextPath()+"/imgSave/"+list.get(i).getS_photo()%>" width="<%=list.get(i).getS_photo_width() %>" height="<%=list.get(i).getS_photo_height() %>" alt="내 사진">
									</div>
                                    <div class="classInfo">
                                        <ul>
                                            <li>강의명 : <%= list.get(i).getLecture() %></li>
                                            <li>강사 : <%= list.get(i).getTeachername() %></li>
                                            <li>시간 : <%= list.get(i).getLecture_time() %></li>
                                            <li>수업료 : <%= list.get(i).getLecture_money() %></li>
                                            <li>위치 : <%= list.get(i).getLecture_location() %></li>
                                        </ul>
                                    </div>
                                    
						<% if(list.get(i).getRegister() == 1) { %>
											<div class="state">
												<div>수강신청</div>
												<div>열람완료</div>
												<div>신청완료</div>
												<div>결제완료</div>
											</div>
						<%
						}
						%>
                                </div>
       
                            </div>
                           </div>
                            </div>
                    </div>
         <%
        	}
 		}
         %>
                </div>
            </div>
            </div>
        </div>
	    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>        
    </div>	        
</body>
</html>