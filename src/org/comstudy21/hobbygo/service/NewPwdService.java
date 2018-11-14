package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import org.comstudy21.hobbygo.Bean.StudentBean;
import org.comstudy21.hobbygo.Dao.S_NewPwdDAO;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class NewPwdService {
	
	public boolean updatePwd(String id, String newPwd) {
		boolean RESULT = false;
		
		Connection conn = JdbcUtil.getConnection(); // �������� ������
		S_NewPwdDAO dao = S_NewPwdDAO.getInstance(); // ���ϴ��� �𸣰����� instance����
		dao.setConnection(conn); // ���Ẹ��, ���� 
		RESULT = dao.selectById(id, newPwd);
		
		JdbcUtil.close(conn);
		return RESULT;
	}
	
	
}
