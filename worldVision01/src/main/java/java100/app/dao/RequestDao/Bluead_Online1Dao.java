package java100.app.dao.RequestDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Request.Bluead_Online1;

public interface Bluead_Online1Dao {
    List<Bluead_Online1> findAll(Map<String,Object> params);
    Bluead_Online1 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll(Map<String, Object> options);
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















