package java100.app.dao.AboutDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.About.About;

public interface AboutDao {
    List<About> findAll(Map<String,Object> params);
    List<About> findAll2(Map<String,Object> params);
    About findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















