package java100.app.service.impl.CommunityImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.CommunityDao.Community05Dao;
import java100.app.domain.Community.Community05;
import java100.app.service.CommunityService.Community05Service;



@Service
public class Community05ServiceImpl implements Community05Service {

    @Autowired Community05Dao community05Dao;
    
    static Logger logger = Logger.getLogger(Community05ServiceImpl.class); 
    
    @Override
    public List<Community05> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_MemberService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return community05Dao.findAll(params);
    }

    @Override
    public Community05 get(int no) {
        return community05Dao.findByNo(no);
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
        return community05Dao.countAll(options);
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
