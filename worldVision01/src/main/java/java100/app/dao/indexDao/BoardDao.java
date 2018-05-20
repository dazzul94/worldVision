package java100.app.dao.indexDao;

import java.util.Map;

import java100.app.domain.index.Board;
import java100.app.domain.index.Comment;

public interface BoardDao {
	Board getBoard(Map<String, Object> params);
	Board[] getBoardList(Map<String, Object> params);
	Comment[] getCommentList(Map<String, Object> params);
	void insertComment(Comment comment);
	int getCountBoard(Map<String, Object> params);
	
}