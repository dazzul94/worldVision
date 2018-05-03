package java100.app.dao.BoardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Board.Bluead_WvBoard;
 
public interface Bluead_WvBoardDao {
    List<Bluead_WvBoard> findAll(Map<String,Object> params);
    Bluead_WvBoard findByNo(int no);
    int countAll(Map<String, Object> options);
    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
	int insert(Bluead_WvBoard bluead_wvboard);
}















