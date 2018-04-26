package java100.app.service.impl.CommunityImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.CommunityDao.Community03Dao;
import java100.app.domain.Community.Community03;
import java100.app.service.CommunityService.Community03Service;



@Service
public class Community03ServiceImpl implements Community03Service {

    @Autowired Community03Dao community03Dao;
    
    static Logger logger = Logger.getLogger(Community03ServiceImpl.class); 
    
    @Override
    public List<Community03> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_MemberService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return community03Dao.findAll(params);
    }

    @Override
    public Community03 get(int no) {
        return community03Dao.findByNo(no);
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
        return community03Dao.countAll(options);
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
