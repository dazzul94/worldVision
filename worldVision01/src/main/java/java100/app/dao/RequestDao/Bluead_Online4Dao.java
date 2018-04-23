package java100.app.dao.RequestDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Request.Bluead_Online4;

public interface Bluead_Online4Dao {
    List<Bluead_Online4> findAll(Map<String,Object> params);
    Bluead_Online4 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll(Map<String, Object> options);
   /* int insert(Member member);
    int update(Member member);
    */
    int update(Bluead_Online4 bluead_Online4);
    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
}















