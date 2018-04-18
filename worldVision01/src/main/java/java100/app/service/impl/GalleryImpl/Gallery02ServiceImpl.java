package java100.app.service.impl.GalleryImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.GalleryDao.Gallery02Dao;
import java100.app.domain.Gallery.Gallery02;
import java100.app.service.GalleryService.Gallery02Service;



@Service
public class Gallery02ServiceImpl implements Gallery02Service {

    @Autowired Gallery02Dao gallery02Dao;
    
    static Logger logger = Logger.getLogger(Gallery02ServiceImpl.class); 
    
    @Override
    public List<Gallery02> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Gallery02Service.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return gallery02Dao.findAll(params);
    }

    @Override
    public Gallery02 get(int no) {
        return gallery02Dao.findByNo(no);
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
    public int getTotalCount() {
        return gallery02Dao.countAll();
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
