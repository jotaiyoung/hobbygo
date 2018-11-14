<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700" rel="stylesheet" type="text/css" />

    <!-- bootstrap -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- 영문폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
    <link href="css/mail.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<script src="js/Cross.js"></script>
<script src="js/mailTable.js"></script>
<script>
	$(document).ready(function() {
        //쪽지함 로드
		$(".receiveContent").load("receiveMail.mail");
        $("#receiveMailTable .nav li").each(function(idx, item) {
            $(item).click(function() {
                $("#receiveMailTable .nav li").removeClass("active");
                $(this).addClass("active");
                var file = (idx==0) ? "receiveMail.mail" : "sendMail.mail";
                $(".receiveContent").load(file);
                
            })
        })
	})
</script>
<body>
	    <div id="wrapper" class="container" style="width:100%;">
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
                    <h2>쪽지함</h2>
                    <div class="intro-body" style="height:400px; padding-left:35px;">
                          <div class="intro-body-content">
                              <div id="receiveMailTable">
                                  <ul class="nav nav-tabs">
                                        <li class="active"><a href="#">받은 쪽지함</a></li>
                                        <li><a href="#">보낸 쪽지함</a></li>
                                   </ul>
                                   <div class="receiveContent"></div>
                              </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>
	    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"></jsp:include>       
    </div>        
</body>
</html>