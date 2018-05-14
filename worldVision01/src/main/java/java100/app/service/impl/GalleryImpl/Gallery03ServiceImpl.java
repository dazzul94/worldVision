package java100.app.service.impl.GalleryImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.GalleryDao.Gallery03Dao;
import java100.app.domain.Gallery.Gallery03;
import java100.app.service.GalleryService.Gallery03Service;



@Service
public class Gallery03ServiceImpl implements Gallery03Service {

    @Autowired Gallery03Dao gallery03Dao;
    
    static Logger logger = Logger.getLogger(Gallery03ServiceImpl.class); 
    
    @Override
    public List<Gallery03> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("GalleryService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return gallery03Dao.findAll(params);
    }

    @Override
    public int getTotalCount() {
        return gallery03Dao.countAll();
    }

}
