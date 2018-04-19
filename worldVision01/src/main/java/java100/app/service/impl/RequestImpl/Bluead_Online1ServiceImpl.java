package java100.app.service.impl.RequestImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.RequestDao.Bluead_Online1Dao;
import java100.app.domain.Request.Bluead_Online1;
import java100.app.service.RequestService.Bluead_Online1Service;

@Service
public class Bluead_Online1ServiceImpl implements Bluead_Online1Service {

    @Autowired Bluead_Online1Dao bluead_onlineDao;
    
    static Logger logger = Logger.getLogger(Bluead_Online1ServiceImpl.class); 
    
    @Override
    public List<Bluead_Online1> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_OnlineServiceImpl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_onlineDao.findAll(params);
    }

    @Override
    public Bluead_Online1 get(int no) {
        return bluead_onlineDao.findByNo(no);
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
    public int getTotalCount(Map<String, Object> options) {
        return bluead_onlineDao.countAll(options);
    }

/*    @Override
    public int add(Member member) {
        return bluead_memberDao.insert(member);
    }

    @Override
    public int update(Member member) {
        return bluead_memberDao.update(member);
    }
*/
    @Override
    public int deleteAll(HashMap<String, Object> numbers) {
        return bluead_onlineDao.deleteAll(numbers);
    }
    @Override
    public int delete(int no) {
        return bluead_onlineDao.delete(no);
    }
}
