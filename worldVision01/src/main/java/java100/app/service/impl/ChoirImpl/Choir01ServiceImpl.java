package java100.app.service.impl.ChoirImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.ChoirDao.Choir01Dao;
import java100.app.domain.Choir.Choir01;
import java100.app.service.ChoirService.Choir01Service;



@Service
public class Choir01ServiceImpl implements Choir01Service {

    @Autowired Choir01Dao choir01Dao;
    
    static Logger logger = Logger.getLogger(Choir01ServiceImpl.class);


	@Override
	public List<Choir01> list(int pageNo, int pageSize, HashMap<String, Object> options) {
		  HashMap<String,Object> params = new HashMap<>();
	        params.put("startIndex", (pageNo - 1) * pageSize);
	        params.put("size", pageSize);
	        
	        if (options != null) {
	            params.putAll(options);
	        }
	        
	        return choir01Dao.findAll(params);
	}


	@Override
	public int getTotalCount(HashMap<String, Object> options) {
		return choir01Dao.countAll(options);
	}


	@Override
	public Choir01 get(int no) {
		return choir01Dao.findByNo(no);
	}


	@Override
	public int choirUpdate(Choir01 choir01) {
		return choir01Dao.choirUpdate(choir01);
	} 
    

}
