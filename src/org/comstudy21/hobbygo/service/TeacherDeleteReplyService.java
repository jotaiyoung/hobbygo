package org.comstudy21.hobbygo.service;

import java.sql.Connection;

import org.comstudy21.hobbygo.Bean.T_replyBean;
import org.comstudy21.hobbygo.Dao.TeacherDao;
import org.comstudy21.hobbygo.db.JdbcUtil;

public class TeacherDeleteReplyService {

	public boolean deleteReply(T_replyBean vo, String getid) {
		Connection conn = JdbcUtil.getConnection();
		TeacherDao dao = TeacherDao.getInstance();
		dao.setConnection(conn);
		boolean tf = dao.deleteReply(vo,getid);
		JdbcUtil.close(conn);
		
		return tf;
	}

}
