package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import javax.servlet.http.HttpServletResponse;

import org.comstudy21.hobbygo.Bean.TeacherBean;
import org.comstudy21.hobbygo.Dao.TeacherDao;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class TeacherChangePasswordService {

	public boolean chagepwd(TeacherBean vo,String getid) {
		Connection conn = JdbcUtil.getConnection();
		TeacherDao dao = TeacherDao.getInstance();
		dao.setConnection(conn);
		boolean tf = dao.chagepwd(vo,getid);
		JdbcUtil.close(conn);
		
		return tf;
		
		
	}
}
