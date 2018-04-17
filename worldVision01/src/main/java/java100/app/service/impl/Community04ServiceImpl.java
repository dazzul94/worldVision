package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.Community04Dao;
import java100.app.domain.Community04;
import java100.app.service.Community04Service;



@Service
public class Community04ServiceImpl implements Community04Service {

    @Autowired Community04Dao community04Dao;
    
    static Logger logger = Logger.getLogger(Community04ServiceImpl.class); 
    
    @Override
    public List<Community04> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_MemberService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return community04Dao.findAll(params);
    }

    @Override
    public Community04 get(int no) {
        return community04Dao.findByNo(no);
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
    public int getTotalCount() {
        return community04Dao.countAll();
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
