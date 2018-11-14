<%@page import="org.sist3.Bean.T_replyBean"%>
<%@page import="org.sist3.Dao.TeacherDao"%>
<%@page import="org.sist3.Bean.TeacherBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
<link href="css/mypage_teacher.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="all" />
</head>
<script src="js/Cross.js"></script>

<script>
	function check() {
		var f = document.replyfrm;
		if (f.r_content.value == "") {
			alert("내용을 입력해주세요.");
			f.r_content.focus();
			return false;
		} else {
			return true;
		}
	}
	function reply(val) {
		if (val == "delete") {
			document.reply_form.action = "reply_del.myTeacher";
		} else if (val == "modify") {
			document.reply_form.action = "reply_modi.myTeacher";
		} else {
			return false;
		}
		document.reply_form.submit();
	}

	$(document).ready(function() {
		$('#TCIbtn').click(function() {
			$('#teacherComconInput').slideDown();
			$('#TCItextarea').val($('#teacherComconInnerText').text());
		})
		$('#TCIbtnCls').click(function() {
			$('#teacherComconInput').slideUp();
			$('#teacherComconInnerText').text($('#TCItextarea').val());
		})

	});
</script>

<body>
	<%
		if (session.getAttribute("t_member") != null) {
			TeacherBean t_member = (TeacherBean) session.getAttribute("t_member");
			if (request.getAttribute("teacherList") != null && request.getAttribute("replyList") != null) {
				ArrayList<TeacherBean> list = (ArrayList<TeacherBean>) request.getAttribute("teacherList");
				int recordSize = list.size();

				for (int i = 0; i < recordSize; i++) {
					TeacherBean vo = list.get(i);
	%>

	<div id="wrapper" class="container" style="width: 100%;">
		<div id="navbar-up-specialLoad">
			<jsp:include page="/WEB-INF/include/menu/topNavMenu.jsp"
				flush="false" />
		</div>
		<div id="header">
			<div id="logo">
				<h1>
					<a href="index.jsp"><img src="images/index_img/logo.png"></a>
				</h1>
			</div>
		</div>
		<div id="navbar-menu-specialLoad">
			<jsp:include page="/WEB-INF/include/menu/navMenu.jsp" flush="false" />
		</div>

		<!-- <div id="banner">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            </div>
        </div> -->

		<div id="teacherPageWrap">
			<div class="well">
				<!--선생님 개인사진/코멘트-->
				<div id="teacherPersonal">
					<div id="teacherPersonalOutLine">
						<div id="teacherImg">
							<img width="100%" height="90%"
								src="<%=request.getContextPath() + "/fileSave/member/" + vo.getT_photo()%>"
								alt="내 사진"></img>
						</div>
						<div id="teacherComment">
							<div id="teacherName"><%=vo.getT_name()%></div>
							<div id="teacherComcon">
								<div id="teacherComconInnerText"><%=vo.getT_comment()%>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div id="teacherTableWrap">
					<table id="TTNoMod" class="table">
						<tr>
							<th colspan="2" style="font-size: 15pt">기본정보</th>
						</tr>
						<tr>
							<th>성별</th>
							<td><%=vo.getT_gender()%></td>
						</tr>
						<tr>
							<th width="25%">연락처</th>
							<td><%=vo.getT_phone()%></td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td><%=vo.getT_email()%></td>
						</tr>
						<tr>
							<th>강의가능지역</th>
							<td><%=vo.getT_place()%></td>
						</tr>
					</table>
					<table id="TTModable" class="table">
						<tr>
							<th colspan="2" style="font-size: 15pt">상세정보</th>
						</tr>
						<tr>
							<th width="25%">경력자료</th>
							<td><a
								href="<%=request.getContextPath() + "/fileSave/member/" + vo.getT_file()%>"><button
										class="btn btn-default btn-block">다운</button></a></td>
						</tr>
					</table>
					<table id="TTcareer" class="table">
						<tr>
							<th colspan="3" style="font-size: 15pt">진행중인강의</th>
						</tr>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
						<tr>
							<td>음악</td>
							<td>왕초보 피아노교실</td>
							<td>2017/06/20 ~ 2017/10/20</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="well">
				<div id="teacherWord">
					<h2>선생님 소개</h2>
					<div id="teacherWordCon">
						<%=vo.getT_intro()%>
					</div>
				</div>
			</div>

			<div class="well">
				<div id="teacherBoard">

					<table class="table">

						<tr>
							<form name="replyfrm" onsubmit="return check()"
								action="reply_ok.myTeacher" method="post">
								<td width="20%">댓글 :</td>
								<input type="hidden" name="t_id" value="<%=vo.getT_id()%>">
									<input type="hidden" name="t_name" value="<%=vo.getT_name()%>">
										<th colspan="3" width="60%"><input type="text" size="60%"
											name="r_content" class="btn btn-default" value=""></th>
										<td colspan="2" width="20%"><input type="submit"
											class="btn btn-default" id="success" value="입력" /></td>
							</form>
						</tr>
						<tr>
							<td width="20%">아이디</td>
							<td colspan="2" width="50%">내용</td>
							<td width="20%">날짜</td>
							<td width="10%">삭제</td>
						</tr>
					</table>

					<%
						ArrayList<T_replyBean> replylist = (ArrayList<T_replyBean>) request.getAttribute("replyList");
									int replyrecordSize = replylist.size();
									for (int j = 0; j < replyrecordSize; j++) {
										T_replyBean replyvo = replylist.get(j);
					%>
					<table class="table">
						<form name="frm" method="post"
							action="reply_del.myTeacher?r_no=<%=replyvo.getR_no()%>&t_id=<%=replyvo.getT_id()%>">
							<tr>
								<td width="20%" name="t_id"><%=replyvo.getT_id()%></td>
								<th colspan="2" width="50%"><%=replyvo.getR_content()%></th>
								<td width="20%"><%=replyvo.getR_date()%></td>
								<td colspan="2" width="10%"><input class="btn btn-default"
									type="submit" value="삭제" /></td>
							</tr>
					</table>
					</form>
					<%
						}
								}
							}
						}
					%>
					<table>
						<tr>
							<td><a href="main.myTeacher"><button
										class="btn btn-default btn-block">메인페이지</button></a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false" />
	</div>
</body>
</html>