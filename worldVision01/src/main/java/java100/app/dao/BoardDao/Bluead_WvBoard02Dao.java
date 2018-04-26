package java100.app.dao.BoardDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Board.Bluead_WvBoard02;
 
public interface Bluead_WvBoard02Dao {
    List<Bluead_WvBoard02> findAll(Map<String,Object> params);
    Bluead_WvBoard02 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll(Map<String, Object> options);
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















