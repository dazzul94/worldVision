package java100.app.service.impl.OnlineImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.OnlineDao.Bluead_OnlineDao;
import java100.app.domain.Online.Bluead_Online;
import java100.app.service.OnlineService.Bluead_OnlineService;

@Service
public class Bluead_OnlineServiceImpl implements Bluead_OnlineService {

    @Autowired Bluead_OnlineDao bluead_onlineDao;
    
    static Logger logger = Logger.getLogger(Bluead_OnlineServiceImpl.class); 
    
    @Override
    public List<Bluead_Online> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
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
    public Bluead_Online get(int no) {
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

    @Override
    public int delete(int no) {
        return bluead_memberDao.delete(no);
    }*/

}
