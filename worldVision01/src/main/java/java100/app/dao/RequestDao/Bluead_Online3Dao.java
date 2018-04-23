package java100.app.dao.RequestDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Request.Bluead_Online3;

public interface Bluead_Online3Dao {
    List<Bluead_Online3> findAll(Map<String,Object> params);
    Bluead_Online3 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll(Map<String, Object> options);
   /* int insert(Member member);
    int update(Member member);
    */
    int update(Bluead_Online3 bluead_Online3);
    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
}















