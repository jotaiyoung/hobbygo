package org.comstudy21.hobbygo.service.qna;

import org.comstudy21.hobbygo.dao.QnaDao;

public class QnaDeleteService {
	private int b_no;

	public QnaDeleteService() {}

	public QnaDeleteService(int b_no) {
		this.b_no = b_no;
	}
	
	public boolean DeleteContent() {
		boolean result = false;
		
		QnaDao dao = new QnaDao();
		result = dao.delete(b_no);
		return result;
	}
}
