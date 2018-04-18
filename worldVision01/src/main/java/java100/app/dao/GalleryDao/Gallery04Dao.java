package java100.app.dao.GalleryDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Gallery.Gallery04;

public interface Gallery04Dao {
    List<Gallery04> findAll(Map<String,Object> params);
    Gallery04 findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















