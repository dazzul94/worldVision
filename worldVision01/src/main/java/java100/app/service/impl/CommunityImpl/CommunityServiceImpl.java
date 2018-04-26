package java100.app.service.impl.CommunityImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.CommunityDao.CommunityDao;
import java100.app.domain.Community.Community;
import java100.app.domain.Request.Bluead_Online1;
import java100.app.service.CommunityService.CommunityService;



@Service
public class CommunityServiceImpl implements CommunityService {

    @Autowired CommunityDao communityDao;
    
    static Logger logger = Logger.getLogger(CommunityServiceImpl.class); 
    
    @Override
    public List<Community> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_MemberService.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return communityDao.findAll(params);
    }

    @Override
    public Community get(int no) {
        return communityDao.findByNo(no);
    }
    
    
    @Override
    public int getTotalCount(Map<String, Object> options) {
        return communityDao.countAll(options);
    }


    @Override
    public int update(Community community) {
        return communityDao.update(community);
    }
    @Override
    public int deleteAll(HashMap<String, Object> numbers) {
        return communityDao.deleteAll(numbers);
    }
    @Override
    public int delete(int no) {
        return communityDao.delete(no);
    }
}