package org.comstudy21.hobbygo.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TeacherFileUploadAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = new ActionForward("/WEB-INF/mypage_teacher/Mypage_Teacher_Revise_FileUploading.jsp", false);
		return forward;
	}
}
