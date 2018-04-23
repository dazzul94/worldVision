package java100.app.service.impl.RequestImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.RequestDao.Bluead_Online4Dao;
import java100.app.domain.Request.Bluead_Online4;
import java100.app.service.RequestService.Bluead_Online4Service;

@Service
public class Bluead_Online4ServiceImpl implements Bluead_Online4Service {

    @Autowired Bluead_Online4Dao bluead_online4Dao;
    
    static Logger logger = Logger.getLogger(Bluead_Online4ServiceImpl.class); 
    
    @Override
    public List<Bluead_Online4> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_OnlineService4Impl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_online4Dao.findAll(params);
    }

    @Override
    public Bluead_Online4 get(int no) {
        return bluead_online4Dao.findByNo(no);
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
        return bluead_online4Dao.countAll(options);
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
    public int update(Bluead_Online4 bluead_Online4) {
        return bluead_online4Dao.update(bluead_Online4);
    }
    @Override
    public int deleteAll(HashMap<String, Object> numbers) {
        return bluead_online4Dao.deleteAll(numbers);
    }
    @Override
    public int delete(int no) {
        return bluead_online4Dao.delete(no);
    }

}
