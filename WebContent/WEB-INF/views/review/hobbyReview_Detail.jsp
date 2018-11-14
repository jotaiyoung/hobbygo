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
        $("button[name=warn]").click(function() {
            confirm("신고하시겠습니까?");
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

        

        <div id="page">
            <div id="content">

                <div id="intro-head">
                    <h2>나에게 맞는 취미를 찾아드려요</h2>
                    <h2>후기게시판</h2>
                    <div class="intro-body">
                             <p>OOO선생님의 후기 게시판입니다. 광고, 욕설 등의 무관한 내용은 관리자에 의하여 경고없이 삭제됨을 알려드립니다.</p>
                              <div class="table-responsive">
                              <table class="table">
                                <thead>
                                  <tr>
                                    <th width="10%">번호</th>
                                      <th> 1 </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>게시글 제목 </td>
                                    <td class="text-left">선생님이 친절하십니다.</td>
                                  </tr>
                                </tbody>
                                 <tbody>
                                  <tr height="300px;">
                                    <td>게시글 </td>
                                    <td class="text-left"><br>
                                    정말 기타의 'ㄱ'도 몰랐었는데 선생님께서 하나하나 차근차근 알려주셔서 자신감도 붙고 실력도 많이 늘었어요! <br> 정말 추천합니다ㅠㅠ 고민하지마시구 신청하세요!! <br>
                                    강의료도 다른 강의보다 저렴하고 좋답니다!<br>
                                    저는 또 신청하러 갑니다 ㅎㅎㅎ 감사합니다^^~~ 
                                    </td>
                                  </tr>
                                </tbody>
                                <tbody>
                                  <tr>
                                    <td>날짜 </td>
                                    <td class="text-left">2017.07.26 (수)</td>
                                  </tr>
                                </tbody>
                                  <tbody>
                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="2">
                                        <button type="button" class="btn btn-primary btn-info"><a href="hobbyReviewBoard.review">목록보기</a></button>
                                        <button type="button" class="btn btn-primary btn-info" name="warn">신고하기</button>
                                          </td>
                                    </tr>
                                </tbody>
                              </table>
                              </div>
                            </div>

                            </div>

                    </div>
                </div>
          			<!-- <div id="footer"></div> -->
          			<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
            </div>


</body>

</html>