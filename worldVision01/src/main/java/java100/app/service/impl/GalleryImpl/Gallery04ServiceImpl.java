package java100.app.service.impl.GalleryImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.GalleryDao.Gallery04Dao;
import java100.app.domain.Gallery.Gallery04;
import java100.app.service.GalleryService.Gallery04Service;



@Service
public class Gallery04ServiceImpl implements Gallery04Service {

    @Autowired Gallery04Dao gallery04Dao;
    
    static Logger logger = Logger.getLogger(Gallery04ServiceImpl.class); 
    
    @Override
    public List<Gallery04> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Gallery04Service.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return gallery04Dao.findAll(params);
    }

    @Override
    public Gallery04 get(int no) {
        return gallery04Dao.findByNo(no);
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
        return gallery04Dao.countAll();
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
