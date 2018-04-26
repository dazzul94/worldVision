package java100.app.service.impl.BoardImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.BoardDao.Bluead_WvBoard02Dao;
import java100.app.domain.Board.Bluead_WvBoard02;
import java100.app.service.BoardService.Bluead_WvBoard02Service;
 
@Service
public class Bluead_WvBoard02ServiceImpl implements Bluead_WvBoard02Service {

    @Autowired Bluead_WvBoard02Dao bluead_wvboard02Dao;
    
    static Logger logger = Logger.getLogger(Bluead_WvBoard02ServiceImpl.class); 
    
    @Override
    public List<Bluead_WvBoard02> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_WvBoard02ServiceImpl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_wvboard02Dao.findAll(params);
    }

    @Override
    public Bluead_WvBoard02 get(int no) {
        return bluead_wvboard02Dao.findByNo(no);
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
        return bluead_wvboard02Dao.countAll(options);
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
