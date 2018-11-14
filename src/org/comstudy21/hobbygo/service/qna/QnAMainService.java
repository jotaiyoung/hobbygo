package org.comstudy21.hobbygo.service.qna;

import java.util.ArrayList;

import org.comstudy21.hobbygo.bean.QnABoardBean;
import org.comstudy21.hobbygo.dao.QnaDao;

public class QnAMainService {
	
	public QnAMainService() {}

	public ArrayList<QnABoardBean> getList() {
		ArrayList<QnABoardBean> boardList= null;
		System.out.println("********************QnAMainService >> QnAMainService ************************");

		boardList = QnaDao.boardList();
		/*System.out.println("boardList : "+boardList);*/
		return boardList;
	}
}