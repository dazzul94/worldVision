package java100.app.service.impl.AboutImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.AboutDao.AboutDao;
import java100.app.domain.About.About;
import java100.app.service.AboutService.AboutService;



@Service
public class AboutServiceImpl implements AboutService {

    @Autowired AboutDao aboutDao;
    
    static Logger logger = Logger.getLogger(AboutServiceImpl.class); 
    
    @Override
    public List<About> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("GalleryService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return aboutDao.findAll(params);
    }
    
    @Override
    public List<About> list2(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("GalleryService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return aboutDao.findAll2(params);
    }

    @Override
    public About get(int no) {
        return aboutDao.findByNo(no);
    }
    
   /* @Override
    public Member get(String email, String password) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        return bluead_memberDao.findByEmailAndPassword(params);
    }
    
    @Override
    public Member get(String email) {
        
        return bluead_memberDao.findByEmail(email);
    }*/
    
    
    @Override
    public int getTotalCount(Map<String,Object> options) {
        return aboutDao.countAll(options);
    }

/*    @Override
    public int add(Member member) {
        return bluead_memberDao.insert(member);
    }

    @Override
    public int update(Member member) {
        return bluead_memberDao.update(member);
    }

    @Override
    public int delete(int no) {
        return bluead_memberDao.delete(no);
    }*/

}
