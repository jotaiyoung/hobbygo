package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import org.comstudy21.hobbygo.Bean.TeacherBean;
import org.comstudy21.hobbygo.Dao.TeacherDao;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class TeacherImgUploadOkService {

	public void insertImg(TeacherBean vo,String getid) {
		Connection conn = JdbcUtil.getConnection();
		TeacherDao dao = TeacherDao.getInstance();
		dao.setConnection(conn);
		dao.insertImg(vo,getid);
		JdbcUtil.close(conn);
		
	}

}
