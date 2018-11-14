package org.comstudy21.hobbygo.service.qna;

import org.comstudy21.hobbygo.bean.QnABoardBean;
import org.comstudy21.hobbygo.dao.QnaDao;

public class QnaAdminReplyService {
private String content = null;
private String date = null;
private int number;
	
	public QnaAdminReplyService() {}
	
	public QnaAdminReplyService(int number, String date, String content) {
		this.number = number;
		this.date = date;
		this.content = content;
	}

	public boolean insertAdmin() {
		boolean result;
		result = QnaDao.insertAdmin(number, date, content);
		return result;
	}

}
