<%@page import="org.sist3.Bean.ClassBean"%>
<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="org.sist3.Bean.StudentBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="admin_head.jsp"></jsp:include>
</head>
<script src="js/Cross.js"></script>

<script>
    $(document).ready(function(){
      $('#admin_page1').click(function(){
        $('#admin_contents_member').fadeIn();
        $('#admin_contents_lecture').hide();
        $('#admin_contents_report').hide();
      })
      $('#admin_page2').click(function(){
        $('#admin_contents_lecture').fadeIn();
        $('#admin_contents_member').hide();
        $('#admin_contents_report').hide();
      })
      $('#admin_page3').click(function(){
        $('#admin_contents_report').fadeIn();
        $('#admin_contents_member').hide();
        $('#admin_contents_lecture').hide();
      })
        $('#admin_member_btn1').click(function () {
          $('#admin_contents_member_student').fadeIn();
          $('#admin_contents_member_teacher').hide();
        })
        $('#admin_member_btn2').click(function () {
          $('#admin_contents_member_teacher').fadeIn();
          $('#admin_contents_member_student').hide();
        })
        $('.lecture_detail_view').click(function(){
          $(this).children().slideToggle();
        })

    })

</script>

<body>

<!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width: 100%; style="overflow:auto;"">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
        <div id="navbar-up-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a  href=""><img src="images/index_img/logo.png"></img></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	 <jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>

	<div id="wrapper" class="container">

            <div id="admin_page" class="well" style="font-size:10pt">

              <div id="admin_header">
                <ul id="admin_nav">
                  <li id="admin_page1">회원관리</li>
                  <li id="admin_page2">강죄관리</li>
                  <li id="admin_page3">신고관리</li>
                </ul>
              </div>

              <div id="admin_contents_member">

                <div id="admin_contents_member_student" >
                  <h2>학생명단</h2>
                  <table class="table">
                    <tr>
                      <th>No</th>
                      <th>ID</th>
                      <th>NAME</th>
                      <th>JOB</th>
                      <th>PHONE</th>
                      <th>EMAIL</th>
                      <th>삭제여부</th>
                    </tr>
<%
if(request.getAttribute("s_memberList") != null && session.getAttribute("admin") != null){
	ArrayList<StudentBean> s_memberList = (ArrayList<StudentBean>)request.getAttribute("s_memberList");
	for(int i=0; i<s_memberList.size(); i++){
		StudentBean s_list = s_memberList.get(i);
%>
					<tr>
                      <td><%=s_list.getS_no() %></td>
                      <td><%=s_list.getS_id() %></td>
                      <td><%=s_list.getS_name() %></td>
                      <td><%=s_list.getS_job() %></td>
                      <td><%=s_list.getS_phone() %></td>
                      <td><%=s_list.getS_email() %></td>
                      <td><a href="Sdelete.admin?s_id=<%=s_list.getS_id() %>"><button class="btn btn-primary" style="height:15px; font-size:8pt; line-height:5px;">삭제</button></a></td>
                    </tr>

<%
	}//end of for
}//end of if
%>                                    
                  </table>
                </div>
                <div id="admin_contents_member_teacher">
                  <h2>강사명단</h2>
                  <table class="table">
                    <tr>
                      <th>No</th>
                      <th>ID</th>
                      <th>NAME</th>
                      <th>PHONE</th>
                      <th>EMAIL</th>
                      <th>CAREER</th>
                      <th>PHOTO</th>
                      <th>삭제</th>
                    </tr>
<%
if(request.getAttribute("t_memberList") != null && session.getAttribute("admin") != null){
	ArrayList<TeacherBean> t_memberList = (ArrayList<TeacherBean>)request.getAttribute("t_memberList");
	for(int i=0; i<t_memberList.size(); i++){
		TeacherBean t_list = t_memberList.get(i);		
%>
        <tr>
          <td><%=t_list.getT_no() %></td>
          <td><%=t_list.getT_id() %></td>
          <td><%=t_list.getT_name() %></td>
          <td><%=t_list.getT_phone() %></td>
          <td><%=t_list.getT_email() %></td>
          <td><a href="#">첨부파일</a></td>
          <td><a href="#">첨부파일</a></td>
          <td><a href="Tdelete.admin?t_id=<%=t_list.getT_id() %>"><button class="btn btn-primary" id="TdeleteBtn" style="height:15px; font-size:8pt; line-height:5px;">삭제</button></a></td>
        </tr>
<%
	}//end of for
}//end of if
%>                   
                  </table>
                </div>
                <ul ID="admin_nav_member">
                  <li id="admin_member_btn1">학생관리</li>
                  <li id="admin_member_btn2">강사관리</li>
                </ul>                
              </div>

              <div id="admin_contents_lecture">
                <h2>강좌명단</h2>
                <table class="table">
                  <tr>
                    <th>NO</th>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>취미</th>
                    <th>취미상세</th>
                    <th>지역</th>
                    <th>상세지역</th>
                    <th>PAY</th>
                    <th>인원</th>
                    <th>주/회</th>
                    <th>진행</th>
                    <th>상세</th>
                    <th>삭제</th>
                  </tr>
<%
if(request.getAttribute("classList") != null && session.getAttribute("admin") != null){
	ArrayList<ClassBean> cbeanList = (ArrayList<ClassBean>)request.getAttribute("classList");
	for(int i=0; i<cbeanList.size(); i++){
		ClassBean cbean = cbeanList.get(i);		
%>
                  <tr>
                    <td><%=cbean.getC_no() %></td>
                    <td><%=cbean.getC_tid() %></td>
                    <td><%=cbean.getC_name() %></td>
                    <td><%=cbean.getC_codeN() %></td>
                    <td><%=cbean.getC_codeD() %></td>
                    <td><%=cbean.getC_area() %></td>
                    <td><%=cbean.getC_areaD() %></td>
                    <td><%=cbean.getC_fee() %></td>
                    <td><%=cbean.getC_part_num() %></td>
                    <td><%=cbean.getC_times() %></td>
                    <td><%=cbean.getC_ing() %></td>
                    <td><a class="lecture_detail_view" href="#">자세히
                      <div>
                        <table class="table">
                          <tr>
                            <th width="20%">한줄소개</th>
                            <th width="10%">섬네일</th>
                            <th>강좌소개</th>
                          </tr>
                          <tr>
                            <td><%=cbean.getC_intro_title() %></td>
                            <td><a href="<%=request.getContextPath()+"/fileSave/lecture/"+cbean.getC_img() %>">첨부파일</a></td>
                            <td><%=cbean.getC_intro_content() %></td>
                          </tr>
                        </table>
                      </div></a>
                    </td>
                    <td><a href="Ldelete.admin?c_no=<%=cbean.getC_no() %>"><button class="btn btn-primary" style="height:15px; font-size:8pt; line-height:5px;">삭제</button></a></td>
                  </tr>
<%
	}//end of for
}//end of if
%>             
                </table>                
              </div>

              <div id="admin_contents_report">
                <h2>신고게시물</h2><br>
                <table class="table">
                <tr>
                	<th colspan = "4">취미In</th>
                </tr>
                  <tr>
                    <th width="10%">No</th>
                    <th>글제목</th>
                    <th width="10%">신고수</th>
                    <th width="20%">글 자세히 보기</th>
                  </tr>
                  <tr>
                    <td>0</td>
                    <td>으히히히히히히히히</td>
                    <td>10</td>
                    <td><a href="#">링크열기</a></td>
                  </tr>
                 </table>
                
                <table class="table">
                 <tr>
                	<th colspan = "4">후기 게시판</th>
                 </tr>
                  <tr>
                    <th width="10%">No</th>
                    <th>글제목</th>
                    <th width="10%">신고수</th>
                    <th width="20%">글 자세히 보기</th>
                  </tr>
                  <tr>
                    <td>0</td>
                    <td>이 강사거 듣지마셈 ㅡㅡ</td>
                    <td>23</td>
                    <td><a href="#">링크열기</a></td>
                  </tr>
                </table>

              </div>
            </div>
  </div>

<!-- <div class="searchbox">
                  <input type="text" id="admin_lecture_searchbox" class="form-control"/ >
                  <button class="btn btn-primary" id="admin_lecture_searchbox_btn">검색</button>
</div> -->

</body>
</html>

