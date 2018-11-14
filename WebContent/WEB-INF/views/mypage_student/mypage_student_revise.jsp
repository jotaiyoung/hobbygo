<%@page import="org.sist3.Bean.StudentBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.sist3.Dao.S_ReviseDAO" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="myStudent_head.jsp" flush="false"></jsp:include> 
    <link href="css/Mypage_Student_Revise.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script>
<%
if(session.getAttribute("Check")!=null){
	session.removeAttribute("Check"); // 이걸 해줘야 창이 뜸
%>
	alert('비밀번호를 변경하였습니다.');
<% 
}
%>
<%	
if(request.getAttribute("UserNull")!=null){
	request.removeAttribute("UserNull"); // 이걸 해줘야 창이 뜸
	
%>
alert('빠진사항이 있습니다.');
<%	
}
%>


</script>
<body>


<%
	if(request.getAttribute("Result") != null) {
		//session.getAttribute("Result");
		//out.print("idid" + list.get(0).getS_id());
		ArrayList<StudentBean> list = (ArrayList<StudentBean>)request.getAttribute("Result");
		
		
%>


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
            <div id="content">

                <div id="intro-head">
                <div id="jointalble_content">
               
                    <form method="post" action="reinfo.myStudent">
              
                <table class="table" id="joinTable">
                    <tr>
                        <td>아이디</td>
                        <td><%=list.get(0).getS_id() %></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><a href="rePwd.myStudent"><input type="button" class="btn btn-default" value="비밀번호 변경"/></a></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><%=list.get(0).getS_name() %></td>
                    </tr>
                    <tr>
                        <td>핸드폰 번호 *</td>
                        <td><input type="text" name="phone"></td>
                    </tr>
                    <tr>
                        <td>E-MAIL</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>연령대 *</td>
                        <td> 
                            <select name="age">
                                <option value="10">10대</option>
                                <option value="20">20대</option>
                                <option value="30">30대</option>
                                <option value="40">40대</option>
                                <option value="50">50대</option>
                                <option value="60">60대</option>
                                <option value="70">70대</option>
                                <option value="80">80대</option>
                            </select>
                           </td>
                    </tr>
                    <tr>
                        <td>직업</td>
                        <td>
                            <select name="job">
                                <option value="사무직">사무직</option>
                                <option value="주부">주부</option>
                                <option value="서비스직">서비스직</option>
                                <option value="IT계열">IT계열</option>
                                <option value="학생">학생</option>
                                <option value="금융권">금융권</option>
                                <option value="선생님, 강사">선생님, 강사</option>
                                <option value="무직">무직</option>
                            </select>
                        </td>
                    </tr>
                </table>
                    <input type="submit" class="btn btn-default" value="회원정보 수정하기" style="margin-left: 800px;"/>
                    
          
        </form>
        </div>
        </div>
        </div>
       </div>
	   	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>     
    </div>   
    <%
	}
    %>                
</body>
</html>