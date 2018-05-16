package java100.app.service.indexService;

import java.util.Map;

import java100.app.domain.index.Board;
import java100.app.domain.index.Comment;

public interface BoardService {
	Board getBoard(Map<String, Object> params);
	Comment[] getCommentList(Map<String, Object> params);
}
