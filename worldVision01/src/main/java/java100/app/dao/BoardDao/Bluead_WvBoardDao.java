package java100.app.dao.BoardDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Board.Bluead_WvBoard;
 
public interface Bluead_WvBoardDao {
    List<Bluead_WvBoard> findAll(Map<String,Object> params);
    Bluead_WvBoard findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















