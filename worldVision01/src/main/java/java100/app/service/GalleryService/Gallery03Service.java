package java100.app.service.GalleryService;

import java.util.List;
import java.util.Map;

import java100.app.domain.Gallery.Gallery03;

public interface Gallery03Service {
    List<Gallery03> list(int pageNo, int pageSize, Map<String,Object> options);
//    Gallery get(int no);
/*    Member get(String email, String password);
    Member get(String email);*/
    int getTotalCount();
   /* int add(Member member);
    int update(Member member);
    int delete(int no);*/
}





