package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Community04;

public interface Community04Dao {
    List<Community04> findAll(Map<String,Object> params);
    Community04 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















