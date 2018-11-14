<%@page import="org.sist3.Bean.TeacherBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
    <jsp:include page="Mypage_Teacher_head.jsp" flush="false"></jsp:include> 
    <link href="css/mypage_classpage_create.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<style>
 .joinImg {
    width: 270px;
    height: 200px;
    background: lightgray;
    margin: 50px auto;
    padding: 0;
	}
	.joinImg img {
		width:100%;
	}
</style>
<script src="js/Cross.js"></script>
<script src="js/classArea.js"></script>
<script src="js/classCategory.js"></script>


<script>
$(document).ready(function(){
    $('#createLecFinal').click(function(){
        $('#p1').text($('#Lname').val());
        $('#p2').text($('#cate1').val());
        $('#p3').text($('#cate2').val());
        $('#p4_1').text($('#area1').val());
        $('#p4_2').text($('#area2').val());
        $('#p5').text($('#pay').val());
        $('#p6').text($('#studentNum').val());
        $('#p7').text($('#weekCnt').val());
        $('#p8').text($('#Lintro').val());
        $('#p9').text($('#Lcurri').val());
    })
    $('#createLec1').click(function(){
        $('#createStep2').fadeIn();
        $('#createStep1').hide();
        $('#createStep3').hide();
    })
    $('#createLecBackto1').click(function(){
        $('#createStep1').fadeIn();
        $('#createStep2').hide();
        $('#createStep3').hide();
    })
    $('#createLecFinal').click(function(){
        $('#createStep3').fadeIn();
        $('#createStep1').hide();
        $('#createStep2').hide();
    })
    $('#createLecBackto2').click(function(){
        $('#createStep3').hide();
        $('#createStep1').hide();
        $('#createStep2').fadeIn();
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

})

</script>

<body>
 

<% 
String tid=null;

if(session.getAttribute("t_member")!=null){
	TeacherBean t_member = (TeacherBean)session.getAttribute("t_member");
	tid=t_member.getT_id();	
}
%>      
    <!-- 홈페이지 메인부분 -->
    <div id="wrapper" class="container" style="width:100%;">
       <!-- 홈페이지 메인 부분 - 제일 위쪽 nav -->
        <div id="navbar-up-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp" flush="false"/>
        </div>
        <div id="header">
           <!-- 홈페이지 메인 부분 - 로고 -->
            <div id="logo">
                <h1><a href="index.jsp"><img src="images/index_img/logo.png"></a></h1>
            </div>
        </div>
        <!-- 홈페이지 메인 부분 - 메뉴nav -->
        <div id="navbar-menu-specialLoad">
        	<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false"/>
        </div>
        
                            <div id="createLecWrap" class="well">
                                <form name="createLecutre" method="post" enctype="multipart/form-data" action="create_ok_classpage.myTeacher">
									<input type="hidden" value="<%=tid %>" name="tid" />
                                    <div id="createStep1">
                                        <table class="table" id="createLecTable1">
                                            <tr>
                                                <th colspan="2">
                                                    <h3>강좌 개설하기!</h3>
                                                    <div class="wizard">
                                                        <a class="current"><span class="badge">1</span> 강좌기본정보 입력</a>
                                                        <a><span class="badge">2</span> 강좌 상세정보 입력</a>
                                                        <a><span class="badge badge-inverse">3</span> 최종확인하기</a>
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th>강좌명</th>
                                                <td><input id="Lname" name="c_name" type="text" placeholder="강좌명을 입력하세요 (ex : 신나는 피아노 강좌!)" class="form-control input-md"></td>
                                            </tr>
                                            <tr>
                                                <th>대분류</th>
                                                <td>
                                                    <select id="cate1" name="c_codeN" onchange="change2(this.selectedIndex);" class="form-control input-md">
                                                        <option>카테고리</option>
                                                        <option>운동</option>
                                                        <option>음악</option>
                                                        <option>미술</option>
                                                        <option>사진</option>
                                                        <option>꽃꽃이</option>
                                                        <option>게임</option>
                                                        <option>학문</option>
                                                        <option>요리</option>
                                                        <option>댄스</option>
                                                        <option>마술</option>
                                                        <option>퀼트</option>
                                                        <option>기타</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>상세분류</th>
                                                <td><select id="cate2" name='c_codeD'  class="form-control input-md">
                                                    <option value='상세분류'>상세분류</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <th>강좌지역</th>
                                                <td>
                                                    <select id="area1" name='c_area' onchange="change(this.selectedIndex);"  class="form-control input-md">
                                                        <option value='전체'>전체</option>
                                                        <option value='서울'>서울</option>
                                                        <option value='부산'>부산</option>
                                                        <option value='대구'>대구</option>
                                                        <option value='인천'>인천</option>
                                                        <option value='광주'>광주</option>
                                                        <option value='대전'>대전</option>
                                                        <option value='울산'>울산</option>
                                                        <option value='경기'>경기</option>
                                                        <option value='강원'>강원</option>
                                                        <option value='충북'>충북</option>
                                                        <option value='충남'>충남</option>
                                                        <option value='전북'>전북</option>
                                                        <option value='전남'>전남</option>
                                                        <option value='경북'>경북</option>
                                                        <option value='경남'>경남</option>
                                                        <option value='제주'>제주</option>
                                                    </select>
                                                    <select id="area2" name='c_areaD'  class="form-control input-md">
                                                        <option value='전지역'>전지역</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>수업료</th>
                                                <td>
                                                <select id="pay" name="c_fee" class="form-control input-md">
                                                        <option>재능기부</option>
                                                        <option>10,000</option>                                                        
                                                        <option>20,000</option>
                                                        <option>30,000</option>
                                                        <option>40,000</option>
                                                        <option>50,000</option>
                                                        <option>60,000</option>
                                                        <option>70,000</option>
                                                        <option>80,000</option>
                                                        <option>90,000</option>
                                                        <option>상담후결정</option>
                                                    </select>                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>희망인원</th>
                                                <td>
                                                    <select id="studentNum" name="c_part_num" class="form-control input-md">
                                                        <option>1명</option>
                                                        <option>2명</option>
                                                        <option>3명</option>
                                                        <option>4명</option>
                                                        <option>5명</option>
                                                        <option>6명</option>
                                                        <option>7명</option>
                                                        <option>8명</option>
                                                        <option>9명</option>
                                                        <option>10명 이상</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>주당횟수</th>
                                                <td>
                                                    <select id="weekCnt" name="c_times" class="form-control input-md">
                                                        <option>협의가능</option>
                                                        <option>1회</option>
                                                        <option>2회</option>
                                                        <option>3회</option>
                                                        <option>4회</option>
                                                        <option>5회</option>
                                                        <option>6회</option>
                                                        <option>7회</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="2"><input type="button" value="다음으로" id="createLec1" class="btn btn-default btn-block"></th>
                                            </tr>
                                        </table>
                                    </div>

                                    <div id="createStep2">

                                        <table class="table" id="createLecTable2">
                                            <tr>
                                                <th colspan="2">
                                                    <h3>강좌 개설하기!</h3>
                                                    <div class="wizard">
                                                        <a><span class="badge">1</span> 강좌기본정보 입력</a>
                                                        <a class="current"><span class="badge">2</span> 강좌 상세정보 입력</a>
                                                        <a><span class="badge badge-inverse">3</span> 최종확인하기</a>
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th>강좌 한줄 소개</th>
                                                <td><input id="Lintro" name="c_intro_title" type="text"
                                                           placeholder="강좌를 한줄로 설명해 주세요 (ex : 신나게 배우는 피아노의 기초강좌! )" class="form-control input-md"></td>
                                            </tr>
                                            <tr>
                                                <th>강좌 섬네일</th>                                                
                                                <td>
	                                                <div class="joinImg">
			                    						<img src="" /> <!-- 여기에 업로드한 이미지 미리 보여지도록. -->
			                   						</div>
                                               		<input type="file" name="c_img" id="imgUploading">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>커리큘럼</th>
                                                <td><textarea id="Lcurri" name="c_intro_content" rows="10" cols="60"></textarea></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">
                                                    <input type="button" value="다음으로" id="createLecFinal" class="btn btn-default btn-block">
                                                    <input type="button" value="이전으로" id="createLecBackto1" class="btn btn-default btn-block">
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="createStep3">
                                        <table class="table" id="createLecTable3">
                                            <tr>
                                                <th colspan="2">
                                                    <h3>강좌 개설하기!</h3>
                                                    <div class="wizard">
                                                        <a><span class="badge">1</span> 강좌기본정보 입력</a>
                                                        <a><span class="badge">2</span> 강좌 상세정보 입력</a>
                                                        <a class="current"><span class="badge badge-inverse">3</span> 최종확인하기</a>
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th width="20%">강좌명</th>
                                                <td><p id="p1"></p></td>
                                            </tr>
                                            <tr>
                                                <th>대분류</th>
                                                <td><p id="p2"></p></td>
                                            </tr>
                                            <tr>
                                                <th>상세분류</th>
                                                <td><p id="p3"></p></td>
                                            </tr>
                                            <tr>
                                                <th>강좌지역</th>
                                                <td><p id="p4_1"></p><br><p id="p4_2"></p></td>

                                            </tr>
                                            <tr>
                                                <th>수업료</th>
                                                <td><p id="p5"></p></td>
                                            </tr>
                                            <tr>
                                                <th>희망인원</th>
                                                <td><p id="p6"></p></td>
                                            </tr>
                                            <tr>
                                                <th>주당횟수</th>
                                                <td><p id="p7"></p></td>
                                            </tr>
                                            <tr>
                                                <th>강좌한줄소개</th>
                                                <td><p id="p8"></p></td>
                                            </tr>
                                            <tr>
                                                <th>커리큘럼</th>
                                                <td><p id="p9"></p></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">
                                                    <input type="button" value="이전으로" id="createLecBackto2" class="btn btn-default btn-block">
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="2"><button class="btn btn-default btn-block">개설하기</button></th>
                                            </tr>
                                        </table>

                                    </div>
                                </form>

                            </div>
        						<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false"/>
    </div>

</body>
</html>



    
    