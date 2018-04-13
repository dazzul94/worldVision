package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.Bluead_MemberDao;
import java100.app.domain.Bluead_Member;
import java100.app.service.Bluead_MemberService;

@Service
public class Bluead_MemberServiceImpl implements Bluead_MemberService {

    @Autowired Bluead_MemberDao bluead_memberDao;
    
    static Logger logger = Logger.getLogger(Bluead_MemberServiceImpl.class); 
    
    @Override
    public List<Bluead_Member> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_MemberService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_memberDao.findAll(params);
    }

    @Override
    public Bluead_Member get(int no) {
        return bluead_memberDao.findByNo(no);
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
        return bluead_memberDao.countAll();
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
