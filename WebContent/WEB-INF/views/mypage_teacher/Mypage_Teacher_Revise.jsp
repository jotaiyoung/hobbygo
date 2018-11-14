<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.sist3.Bean.TeacherBean"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
<link href="css/Mypage_Teacher_Revise.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="all" />
</head>
<title>회원 정보 수정</title>
<script src="js/Cross.js"></script>
<script>
	function fn_myPassword() {
		ur1 = "password_Revise.myTeacher"
		window
				.open(
						ur1,
						'a',
						"left=50, top=50, width=800, height=320, toolbar=no, scrollbars=no, status=no, resizable=no");
	}
	function fileUploading() {
		ur1 = "Revise_FileUploading.myTeacher"
		window
				.open(
						ur1,
						'a',
						"left=50, top=50, width=800, height=320, toolbar=no, scrollbars=no, status=no, resizable=no");
	}
	function imgUploading() {
		ur1 = "Revise_ImgUploading.myTeacher"
		window
				.open(
						ur1,
						'a',
						"left=50, top=50, width=800, height=320, toolbar=no, scrollbars=no, status=no, resizable=no");
	}

	function careerDel() {
		alert("이력서를 삭제하시겠습니까?");
		return true;
	}

	function check() { /* 전송 버튼 클릭 시 일어나는 함수 */

		var f = document.frm;
		if (f.t_phone.value == "") {
			alert("전화번호를 입력해주세요.");
			f.t_phone.focus();
			return false;
		}
		if (f.t_email.value == "") {
			alert("이메일 주소를 입력해주세요.");
			f.t_email.focus();
			return false;
		}
		if (f.t_place.value == "") {
			alert("지역을 선택해주세요.");
			f.t_place.focus();
			return false;
		} else {
			alert("회원 정보가 수정되었습니다.")
			return true;
		}
	}
</script>
<body>
	<%
		if (request.getAttribute("teacherList") != null) {
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

		<div id="page">
			<div id="content">

				<div id="intro-head">
					<div id="jointalble_content">
						<div id="joinleft">
							<div class="joinImg">
								<img width="100%" height="100%"
									src="<%=request.getContextPath() + "/fileSave/member/" + vo.getT_photo()%>"
									alt="내 사진"></img>
							</div>
							<button class="btn btn-default" id="imgUploading"
								onClick="imgUploading()">사진 올리기</button>
							<hr>

								<hr>
									<div id="documentFile">
										<table class="table">

											<tr>
												<td>이력서</td>
												<td>파일명</td>
												<td>삭제</td>
											</tr>
											<tr>
												<td colspan='2'><a
													href="<%=request.getContextPath() + "/fileSave/member/" + vo.getT_file()%>"><%=vo.getT_file()%></a></td>

												<td><form onsubmit="return careerDel()"
														action="career_delete.myTeacher" method="post">
														<button class="btn btn-default" name="deleteCareer"
															onclick="careerDel()">삭제</button>
													</form></td>
											</tr>

										</table>
										<button class="btn btn-default" onClick="fileUploading()">파일
											올리기</button>
									</div>
						</div>


						<form name="frm" onsubmit="return check()"
							action="revise_ok.myTeacher" method="post">
							<div id="joinright" style="padding: 50px;">
								<table class="table" id="joinTable">
									<tr>
										<td>아이디 *</td>
										<td><%=vo.getT_id()%></td>
									</tr>
									<tr>
										<td>비밀번호 *</td>
										<td><input type="button" onclick="fn_myPassword()"
											class="btn btn-default" value="비밀번호 변경" /></td>
									</tr>
									<tr>
										<td>이름 *</td>
										<td><%=vo.getT_name()%></td>
									</tr>
									<tr>
										<td>핸드폰 번호 *</td>
										<td><input type="text" name="t_phone"
											value="<%=vo.getT_phone()%>"></td>
									</tr>
									<tr>
										<td>E-MAIL *</td>
										<td><input type="text" name="t_email"
											value="<%=vo.getT_email()%>"></td>
									</tr>
									<tr>
										<td>강의 가능 지역 *</td>
										<td><select name="t_place">
												<option value="">지역 선택</option>
												<option value="경기도"
													<%if (vo.getT_place().equals("경기도"))
						out.println("selected");%>>경기도</option>
												<option value="서울특별시"
													<%if (vo.getT_place().equals("서울특별시"))
						out.println("selected");%>>서울특별시</option>
												<option value="인천광역시"
													<%if (vo.getT_place().equals("경기도"))
						out.println("selected");%>>인천광역시</option>
												<option value="충청북도"
													<%if (vo.getT_place().equals("충청북도"))
						out.println("selected");%>>충청북도</option>
												<option value="충청남도"
													<%if (vo.getT_place().equals("충청남도"))
						out.println("selected");%>>충청남도</option>
												<option value="전라북도"
													<%if (vo.getT_place().equals("전라북도"))
						out.println("selected");%>>전라북도</option>
												<option value="전라남도"
													<%if (vo.getT_place().equals("전라남도"))
						out.println("selected");%>>전라남도</option>
												<option value="경상북도"
													<%if (vo.getT_place().equals("경상북도"))
						out.println("selected");%>>경상북도</option>
												<option value="경상남도"
													<%if (vo.getT_place().equals("경상남도"))
						out.println("selected");%>>경상남도</option>
												<option value="제주도"
													<%if (vo.getT_place().equals("제주도"))
						out.println("selected");%>>제주도</option>
										</select></td>
									</tr>
									<tr>
										<td>은행/계좌</td>
										<td><select name="t_bank">
												<%
													String[] bank = { "선택", "우리", "국민", "신한", "농협", "하나" };
															for (int k = 0; k < bank.length; k++) {
																String msg = bank[k];

																if (bank[k].equals("선택")) {
																	msg = "";
																}
												%>
												<option value="<%=msg%>"
													<%if (vo.getT_account().equals(msg))
							out.println("selected");%>><%=bank[k]%></option>
												<%
													}
												%>
										</select> <input type="text" name="t_account"
											value="<%=vo.getT_account()%>"> '-'를 제외하고 입력해주세요.</input> <%-- <input type="text" name="t_bank"
											value="<%=vo.getT_bank()%>"><input type="text"
												name="t_account" >  --%></td>
									</tr>
									<tr>
										<td>프로필 소개</td>
										<td>
											<div id="teacherComconInnerText" name="t_comment">
												<textarea cols="60" name="t_comment" id="comment"><%=vo.getT_comment()%></textarea>
											</div>
										</td>
									</tr>
									<tr>
										<td>자기 소개</td>
										<td>
											<div id="teacherWordCon">
												<textarea rows="10" cols="60" name="t_intro" id="content"><%=vo.getT_intro()%></textarea>
											</div>
										</td>
									</tr>
								</table>
								<table>
									<tr>
										<td><input type="submit" class="btn btn-default"
											id="joinsuccess" value="회원정보 수정하기" /> </td>
											<td><a
											href="main.myTeacher"><input type="button"
												class="btn btn-default btn-block" value="취소"></a></td>
									</tr>
								</table>
						</form>

						<%
							} //end of for
							} //end of if
						%>


					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/include/menu/footer.jsp" flush="false" />

	</div>



</body>

</html>


