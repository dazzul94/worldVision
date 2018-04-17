package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Gallery02;

public interface Gallery02Dao {
    List<Gallery02> findAll(Map<String,Object> params);
    Gallery02 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















