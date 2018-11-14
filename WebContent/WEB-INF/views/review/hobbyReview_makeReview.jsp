<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
     <jsp:include page="hobbyReview_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>

<script>
	$(document).ready(function() {
        $("button[name=makeReview]").click(function() {
            if ($("input[name=title]").val() == "") {
                alert("제목을 입력해주세요!");
                return;
            } else if ($("input[name=title]").val().length <5) {
                alert("리뷰 제목은 최소 5글자 이상 작성해주세요.");
                return;
            } else if ($("textarea[name=reviewContents]").val() == "") {
                alert("리뷰를 입력해주세요!");
                return;
            } else if ($("textarea[name=reviewContents]").val().length <10) {
                alert("리뷰는 최소 10글자 이상 작성해주세요.");
                return;
            } 
            location.href="hobbyReviewBoard.review";
        })

    })
</script>

<body>
	
    <div id="wrapper" class="container">
    	 
         <div id="navbar-up-specialLoad">
         	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
         </div> 
        <div id="header">
            <div id="logo">
                <h1><a href="#"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
         <div id="navbar-menu-specialLoad">
         	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
         </div>
        

        <div id="banner">
        </div>

       <div id="page">
            <div id="content">

                <div id="intro-head">
                 
                    <div class="intro-body" style="height:400px; padding-left:35px;">
            
                           <table class="table">
                               <tr>
                                   <td> 글 제목 </td>
                                   <td><input type="text" name="title" class="form-control"></td>
                                </tr>
                                <tr>
                                   <td colspan="2">
                                   <textarea class="form-control col-sm-5" rows="10" name="reviewContents"></textarea>
                                   </td>
                                </tr>
                        </table>
                        
                    </div>
                </div>
            </div>
           <button class="btn btn-default" name="makeReview" style="float:right"> 후기 남기기 </button>
        </div>
     <div id="footer">
        <jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>      
     </div> 
    </div>
</body>
</html>   