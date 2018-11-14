<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link href="css/mypage_teacher.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="all" />
<jsp:include page="Mypage_Teacher_head.jsp"></jsp:include>
</head>
<title>이미지 업로드</title>
<script src="js/Cross.js"></script>
<script>
$(document).ready(function() {
	var f = document.fileForm;
	$("form[name=fileform]").submit(function() {
		event.preventDefault();
   
        if ($("input[name=t_photo]").val() == "") {
            alert("사진을 선택해주세요!");
        	f.t_photo.focus();
            return;
        }
        this.method="POST";
		this.action="Revise_ImgUploading_ok.myTeacher";
		this.submit();
    })
});

</script>

<body>
	<div class="container" id="FileUp">
		<br>
			<div class="Uptitle">
				사진 업로드 <br><br><hr>
			</div>
			<form name="fileform" enctype="multipart/form-data">
				<input type="hidden" name="t_photo_height" value="100%"> 
				<input type="hidden" name="t_photo_width" value="100%">
						<table class="table">
							<tr>
								<td><input type="file" name="t_photo"
									class="btn btn-default"><h5>*jpg, png, jpeg형태, 10Mb이하의 사진만 업로드 가능합니다.</h5></td>
							</tr>
						</table>
						<hr>
							<input type="submit" class="btn btn-default" style="float: right"
								name="SuccessBtn" value="파일 올리기">
			</form>
	</div>
</body>

</html>