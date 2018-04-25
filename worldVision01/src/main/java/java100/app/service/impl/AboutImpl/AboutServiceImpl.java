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
    @Override
    public int getTotalCount(Map<String,Object> options) {
        return aboutDao.countAll(options);
    }
    @Override
    public int getTotalCount2(Map<String,Object> options) {
        return aboutDao.countAll2(options);
    }
   @Override
    public int add(About about) {
        return aboutDao.insert(about);
    }
    @Override
    public int update(About about) {
        return aboutDao.update(about);
    }

    @Override
    public int delete(int no) {
        return aboutDao.delete(no);
    }
    @Override
    public int deleteAll(HashMap<String, Object> numbers) {
        return aboutDao.deleteAll(numbers);
    }

}
