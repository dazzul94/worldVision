package java100.app.dao.CommunityDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Community.Community03;

public interface Community03Dao {
    List<Community03> findAll(Map<String,Object> params);
    Community03 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















