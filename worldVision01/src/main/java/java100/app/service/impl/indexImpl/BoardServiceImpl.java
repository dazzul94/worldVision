package java100.app.service.impl.indexImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.indexDao.BoardDao;
import java100.app.domain.index.Board;
import java100.app.domain.index.Comment;
import java100.app.service.indexService.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao dao;
	
	@Override
	public Board getBoard(Map<String, Object> params) {
		return dao.getBoard(params);
	}
	
	@Override
	public Board[] getBoardList(Map<String, Object> params) {
		return dao.getBoardList(params);
	}

	@Override
	public Comment[] getCommentList(Map<String, Object> params) {
		return dao.getCommentList(params);
	}

	@Override
	public void insertComment(Comment comment) {
		dao.insertComment(comment);
	}

	@Override
	public int getCountBoard(Map<String, Object> params) {
		System.out.println("dbname = " + params.get("dbName"));
		return dao.getCountBoard(params);
	}
	
}
