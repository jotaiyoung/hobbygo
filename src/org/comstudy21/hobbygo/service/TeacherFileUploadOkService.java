package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import org.comstudy21.hobbygo.Bean.TeacherBean;
import org.comstudy21.hobbygo.Dao.TeacherDao;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class TeacherFileUploadOkService {
	public void insertCareer(TeacherBean vo, String getid){
		Connection conn = JdbcUtil.getConnection();
		TeacherDao dao = TeacherDao.getInstance();
		String fileName = vo.getT_file();
		dao.setConnection(conn);
		dao.insertCareer(fileName,getid);
		JdbcUtil.close(conn);
	}
}
