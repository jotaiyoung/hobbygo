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
             location.href="hobbyReview_makeReview.review";
        })
    })
</script>
<body>
    <div id="wrapper" class="container">
    	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/> 
        <!-- <div id="navbar-up-specialLoad"></div> -->
        <div id="header">
            <div id="logo">
                <h1><a href="#"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
        <!-- <div id="navbar-menu-specialLoad"></div> -->
		<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
       <!--  <div id="banner">
        </div> -->

       <div id="page">
            <div id="content">

                <div id="intro-head">
                 
                    <div class="intro-body" style="height:400px; padding-left:35px;">
            
                            <h2>후기게시판</h2>
                             <p>OOO선생님의 후기 게시판입니다. 광고, 욕설 등의 무관한 내용은 관리자에 의하여 경고없이 삭제됨을 알려드립니다.</p>
                        <div class="table-responsive">          
                              <table class="table" id="ReviewTable">
                               <thead>
                                  <tr>
                                    <td>번호</td>
                                    <td width="55%">게시글</td>
                                    <td>날짜</td>
                                  </tr>
                                  </thead>
                                <tbody>
                                  <tr>
                                    <td>1</td>
                                    <td><a href="hobbyReview_Detail.review">선생님이 친절하십니다.</a></td>
                                    <td>2017.07.26</td>
                              
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>2</td>
                                    <td>잘 가르쳐주시기는 하는데...</td>
                                    <td>2017.07.25</td>
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>3</td>
                                    <td>잘 배우고 갑니다^^</td>
                                    <td>2017.07.25</td>
                                  
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>4</td>
                                    <td>강의료가 저렴해요!</td>
                                    <td>2017.07.24</td>
                                
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>5</td>
                                    <td>나중에 기회가 되면 또 봬요~</td>
                                    <td>2017.07.20</td>
                                  
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>6</td>
                                    <td>첫 제자 다녀갑니다^^!</td>
                                    <td>2017.06.30</td>
                                   
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>7</td>
                                    <td>OOO선생님의 강좌가 오픈되었습니다! 후기 남겨주세요^^!</td>
                                    <td>2017.06.20</td>
                               
                                  </tr>
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
           <button class="btn btn-default" name="makeReview" style="float:right">후기 남기기</button>
        </div>
    	<!-- <div id="footer"></div> -->
    	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/> 
    </div>
</body>
</html>