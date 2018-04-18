package java100.app.service.impl.BoardImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.BoardDao.Bluead_WvBoardDao;
import java100.app.domain.Board.Bluead_WvBoard;
import java100.app.service.BoardService.Bluead_WvBoardService;
 
@Service
public class Bluead_WvBoardServiceImpl implements Bluead_WvBoardService {

    @Autowired Bluead_WvBoardDao bluead_wvboardDao;
    
    static Logger logger = Logger.getLogger(Bluead_WvBoardServiceImpl.class); 
    
    @Override
    public List<Bluead_WvBoard> list(int pageNo, int pageSize, Map<String, Object> options) {
        	
        logger.debug("Bluead_WvBoardServiceImpl.list()..... 호출됨!");
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return bluead_wvboardDao.findAll(params);
    }

    @Override
    public Bluead_WvBoard get(int no) {
        return bluead_wvboardDao.findByNo(no);
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
        return bluead_wvboardDao.countAll();
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