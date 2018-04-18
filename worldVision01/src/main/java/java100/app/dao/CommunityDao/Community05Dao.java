package java100.app.dao.CommunityDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Community.Community05;

public interface Community05Dao {
    List<Community05> findAll(Map<String,Object> params);
    Community05 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















