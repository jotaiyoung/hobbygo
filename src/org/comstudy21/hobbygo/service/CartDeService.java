package org.comstudy21.hobbygo.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.comstudy21.hobbygo.Bean.CartBean;
import org.comstudy21.hobbygo.Dao.CartDAO;
import org.comstudy21.hobbygo.db.JdbcUtil;

	public class CartDeService {
		
	public int CartDelete(int No) { // DB�� �迭�� �ҷ����� �Լ�
		
		Connection conn = JdbcUtil.getConnection(); // �������� ������
		CartDAO dao = CartDAO.getInstance(); // ���ϴ��� �𸣰����� instance����
		dao.setConnection(conn); // ���Ẹ��, ���� 
		
		int RESULT = dao.CartDelete(No);
		
		JdbcUtil.close(conn);
		
		return RESULT;
	}
}
