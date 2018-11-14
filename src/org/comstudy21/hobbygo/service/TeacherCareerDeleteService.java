package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import org.comstudy21.hobbygo.Dao.TeacherDao;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class TeacherCareerDeleteService {

	public boolean careerDelete(String getid) {
		Connection conn = JdbcUtil.getConnection();
		TeacherDao dao = TeacherDao.getInstance();
		dao.setConnection(conn);
		boolean tf = dao.careerDelete(getid);
		JdbcUtil.close(conn);
		
		return tf;
	}

}
