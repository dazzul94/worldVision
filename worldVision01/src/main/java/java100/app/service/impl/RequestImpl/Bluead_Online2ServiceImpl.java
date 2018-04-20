package java100.app.service.impl.RequestImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.RequestDao.Bluead_Online2Dao;
import java100.app.domain.Request.Bluead_Online2;
import java100.app.service.RequestService.Bluead_Online2Service;

@Service
public class Bluead_Online2ServiceImpl implements Bluead_Online2Service {

    @Autowired Bluead_Online2Dao bluead_online2Dao;
    
    static Logger logger = Logger.getLogger(Bluead_Online2ServiceImpl.class); 
    
    @Override
    public List<Bluead_Online2> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_OnlineService2Impl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_online2Dao.findAll(params);
    }

    @Override
    public Bluead_Online2 get(int no) {
        return bluead_online2Dao.findByNo(no);
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
        return bluead_online2Dao.countAll(options);
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
        return bluead_online2Dao.deleteAll(numbers);
    }
    @Override
    public int delete(int no) {
        return bluead_online2Dao.delete(no);
    }

}
