package java100.app.service.impl.BoardImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.BoardDao.Bluead_WvBoard03Dao;
import java100.app.domain.Board.Bluead_WvBoard;
import java100.app.domain.Board.Bluead_WvBoard03;
import java100.app.service.BoardService.Bluead_WvBoard03Service;
 
@Service
public class Bluead_WvBoard03ServiceImpl implements Bluead_WvBoard03Service {

    @Autowired Bluead_WvBoard03Dao bluead_wvboard03Dao;
    
    static Logger logger = Logger.getLogger(Bluead_WvBoard03ServiceImpl.class); 
    
    @Override
    public List<Bluead_WvBoard03> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_WvBoard03ServiceImpl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_wvboard03Dao.findAll(params);
    }

    @Override
    public Bluead_WvBoard03 get(int no) {
        return bluead_wvboard03Dao.findByNo(no);
    }
    
    
    
    @Override
    public int getTotalCount(Map<String,Object> options) {
        return bluead_wvboard03Dao.countAll(options);
    }

    @Override
    public int delete(int no) {
        return bluead_wvboard03Dao.delete(no);
    }
    @Override
    public int deleteAll(HashMap<String, Object> numbers) {
        return bluead_wvboard03Dao.deleteAll(numbers);
    }

	@Override
	public int add(Bluead_WvBoard bluead_wvboard) {
		return bluead_wvboard03Dao.insert(bluead_wvboard);
	}
}
