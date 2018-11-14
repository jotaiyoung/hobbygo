<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.setAttribute("memberType", "teacher"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
   <jsp:include page="Join_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>
<script src="js/joinValidation.js"></script>
<script>
    $(document).ready(function() {
    	var file = document.getElementById("imgUploading").files[0];
    	
    	
    	$(":text[name=id]").css({"display":"none"});

    	function checkID() {
    		window.open("CheckCheck.join", "checkID", "width=600, height=300, loaction=no, resizable=no, scrollbars=no, status=no, directories=no;");
    	}
    	
    	//아이디 중복검사
    	$(":button[name=sameId]").click(function() {
    		event.preventDefault();
    		if($(this).val()=="아이디 입력") {
	    		checkID();  			
    		}
    	})

    	//이미지파일미리보기
    	var sel_file;
    	
    	$("#imgUploading").on("change", handleImgFileSelect);
    	function handleImgFileSelect(e) {
    		var files = e.target.files;
    		var filesArr = Array.prototype.slice.call(files); //파일 유효성 검사때문에 하는듯?
    				
    		filesArr.forEach(function(f) {
    			if(!f.type.match("image.*")) {
    				alert("jpg, png, jpeg 형태의 파일만 업로드 가능합니다!");
    				$("#imgUploading").val("");
    				return;
    			}
    			sel_file = f;
    			
    			var reader = new FileReader();
    			reader.onload = function(e) {
    				$(".joinImg img").attr("src", e.target.result);
    			}
    			reader.readAsDataURL(f);
    		})
    	}
    	
    	//경력증명 파일
    	
    	
    	$("#fileUploading").on("change", outputFileInfo);
    	function outputFileInfo(e) {
    		var files = e.target.files;
    		var filesArr = Array.prototype.slice.call(files);
    		filesArr.forEach(function(f) {
    			if(!f.type.match("text/*") && !f.type.match("application/vnd.openxmlformats-officedocument.*")) {
    				alert("txt, docx, ppt 형태의 파일만 업로드 가능합니다!");
    				$("#fileUploading").val("");
    				return;
    			}
    			if(f.size >= 10000000) {
    				alert("10Mb 이하의 파일만 업로드 가능합니다!");
    				$("#fileUploading").val("");
    				return;
    			}
    		})
    	}
    	
    	
    	//db로 보내기
    	$("form[name=frm]").submit(function() {
        	event.preventDefault();
        	var result = fn_action("teacher");
        	if(result == null) return;
        	this.method = "POST";
        	this.action = "Result.join";//회원가입 result페이지.
        	this.submit();
        })
    })
</script>							

<body>
  
    
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
                <div class="JoinLogo">
                       선생님 회원가입 <br>
                         <img src="images/join_img/imgT.png" style="width:100px;">
                    </div>
                    <hr>
                <div id="intro-head">
                	<div id="jointalble_content">
	    				<form name="frm" method="post" enctype="multipart/form-data">
		                	<div id="joinleft">
		                    	<div class="joinImg">
		                    		<img src="" /> <!-- 여기에 업로드한 이미지 미리 보여지도록. -->
		                   		</div>
		                    <input type="file" class="btn btn-default"id="imgUploading" name="t_img"/>
		                    <span>*jpg, png, jpeg형태, 10Mb이하의 사진만 업로드 가능합니다.</span>
		                    	<div id="documentFile">
			                        <p>경력증명파일</p>
		                        	<input type="file" class="btn btn-default" id="fileUploading" name="t_file" value="파일 올리기"/>
									<br />
		                    		<span>10Mb이하의 텍스트파일 및 ppt, word파일만 업로드 가능합니다.</span>
		                    	</div>
		                    </div>
		                <div id="joinright">
		                	<table class="table" id="joinTable">
			                    <tr>
			                        <td>아이디 *</td>
			                        <td><input style="display:inline;" type="text" name="id" readonly/>
			                            <input type="button" class="btn btn-default" value="아이디 입력" name="sameId" />
			                        </td> 
			                    </tr>
			                    <tr>
			                        <td>비밀번호 *</td>
			                        <td><input type="password" name="password"></td>
			                    </tr>
			                    <tr>
			                        <td>비밀번호 재입력 *</td>
			                        <td><input type="password" name="password_check"></td>
			                    </tr>
			                    <tr>
			                        <td>이름 *</td>
			                        <td><input type="text" name="username"></td>
			                    </tr>
			                    <tr>
			                        <td>성별 *</td>
			                        <td>남 <input type="radio" name="gender" value="M">
			                           	 여 <input type="radio" name="gender" value="F"></td>
			                    </tr>
			                    <tr>
			                        <td>핸드폰 번호 *</td>
			                        <td><input type="text" name="phone"> '-'를 제외하고 입력해주세요.</td>
			                    </tr>
			                    <tr>
			                        <td>E-MAIL*</td>
			                        <td><input type="text" name="email"></td>
			                    </tr>
			                    <tr>
			                        <td>강의 가능 지역 *</td>
			                        <td> 
			                            <select name="area" id="areaSelect">
			                            <%
			                            	String[] area = {"지역선택", "경기도", "서울특별시", "인천광역시", "충청북도", 
			                            			"충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주도"};
			                            	for(int i=0; i<area.length; i++) {
			                            		String msg = area[i];
			                            		if(i==0) msg = "0";
			                            %>
			                            		<option value="<%=msg%>"><%=area[i] %></option>
			                            <%
			                            	}
			                            %>
			                            </select>
			                        </td>
			                    </tr>
			                    <tr>
			                    	<td>거래계좌번호*</td>
			                    	<td>
			                    		<select name="bank">
			                    			<%
				                            	String[] bank = {"선택", "우리", "국민", "신한", "농협", "하나"};
				                            	for(int i=0; i<bank.length; i++) {
				                            		String msg = bank[i];
				                            		if(bank[i].equals("선택")) {msg="0";}
				                            %>
				                            		<option value="<%=msg%>"><%=bank[i] %></option>
				                            <%
				                            	}
				                            %>
			                    		</select>
			                    		<input type="text" name="accountNum"> '-'를 제외하고 입력해주세요.</input>
			                    	</td>
			                    </tr>
		                	</table>
		                    <input type="submit" class="btn btn-default" id="joinsuccess" value="선생님회원 가입하기" />
		            	</div>
        			</form>
        		</div>
        	</div>
        </div>
       </div>
       	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>                  
	</div>


</body>

</html>

    