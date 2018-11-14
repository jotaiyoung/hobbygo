<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.setAttribute("memberType", "student"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
  	<jsp:include page="Join_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script src="js/joinValidation.js"></script>
<script>
    $(document).ready(function() {
    	
    	$(":text[name=id]").css({"display":"none"});

    	function checkID() {
    		window.open("CheckCheck.join", "checkID", "width=600, height=300, loaction=no, resizable=no, scrollbars=no, status=no, directories=no;");
    	}
    	$(":button[name=sameId]").click(function() {
    		event.preventDefault();
    		if($(this).val()=="아이디 입력") {
	    		checkID();  			
    		}
    	})
    	
    	$("form[name=frm]").submit(function() {
        	event.preventDefault();
        	var result = fn_action("student");
        	if(result == null) return;
        	this.method = "POST";
        	this.action = "Result.join";//회원가입 result페이지.
        	this.submit();
        })
    })
</script>


<body>
    <!-- 취미검색 부분 -->
  
    
    <div id="wrapper" class="container" style="width: 100%;">

        <div id="navbar-up-specialLoad">
        <jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>        
        </div>
        <div id="header">
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png" alt="" /></a></h1>
            </div>
        </div>
   
        <div id="navbar-menu-specialLoad">
        <jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>        
        </div>
   
        <div id="page">
            <div id="content">

                <div id="intro-head">
                <div id="jointalble_content">

                    <div class="JoinLogo">
                    	학생 회원가입<br />
                    <img src="images/join_img/imgS.png" style="width:100px;" /> 
                   </div>
                   <hr />
             <form name="frm">
                <table class="table" id="joinTable">
                    <tr>
                        <td>아이디 *</td>
                        <td><input style="display:inline;" type="text" name="id" readonly/>
                        <input type="button" class="btn btn-default" value="아이디 입력" name="sameId" />
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호 *</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td>비밀번호 재입력 *</td>
                        <td><input type="password" name="password_check" /></td>
                    </tr>
                    <tr>
                        <td>이름 *</td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>성별 *</td>
                        <td>남 <input type="radio" id="gender" name="gender" value="M" />
                           	 여 <input type="radio" id="gender" name="gender" value="F" /></td>
                    </tr>
                    <tr>
                        <td>핸드폰 번호 *</td>
                        <td><input type="text" name="phone" />	'-'는 제외하고 입력해주세요!</td>
                    </tr>
                    <tr>
                        <td>E-MAIL*</td>
                        <td><input type="text" name="email" /></td>
                    </tr>
                    <tr>
                        <td>연령대 *</td>
                        <td> 
                            <select name="age" id="age">
                            <%
                            	for(int i=0; i<90;	  ) {
                            		String msg = i+"대";
                            		if(i == 0) msg="연령대를 선택해주세요.";
                            %>
                            	<option value="<%=i %>"><%=msg %></option>
                            <%	
                            		i=i+10;
                            	}
                            %>
                            </select>
                           </td>
                    </tr>
                    <tr>
                        <td>직업</td>
                        <td>
                            <select name="job">
                            	<%
                            		String[] job = {"선택", "사무직", "주부", "서비스직", "IT계열", "학생", "금융권", "선생님,강사", "무직"};
                            		for(int i=0; i<job.length; i++) {
                            	%>
                            			<option value="J00<%=i+1 %>"><%=job[i] %></option>
                            	<%
                            		}
                            	%>
                            </select>
                        </td>
                    </tr>
                </table>
                    <input type="submit" class="btn btn-default" id="joinsuccess" value="학생회원 가입하기" />
        </form>
        </div>
        </div>
        </div>
       </div> 
        	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>      
    </div>                   


</body>

</html>
    