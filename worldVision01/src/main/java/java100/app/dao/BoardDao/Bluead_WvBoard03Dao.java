package java100.app.dao.BoardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Board.Bluead_WvBoard03;
 
public interface Bluead_WvBoard03Dao {
    List<Bluead_WvBoard03> findAll(Map<String,Object> params);
    Bluead_WvBoard03 findByNo(int no);
    int countAll(Map<String, Object> options);
    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
}















