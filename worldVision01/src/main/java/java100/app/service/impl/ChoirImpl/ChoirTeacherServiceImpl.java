package java100.app.service.impl.ChoirImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.ChoirDao.ChoirTeacherDao;
import java100.app.domain.Choir.Choir_Teacher;
import java100.app.service.ChoirService.ChoirTeacherService;



@Service
public class ChoirTeacherServiceImpl implements ChoirTeacherService {

    @Autowired ChoirTeacherDao choirTeacherDao;
    
    static Logger logger = Logger.getLogger(ChoirTeacherServiceImpl.class);


	@Override
	public List<Choir_Teacher> list(int pageNo, int pageSize, HashMap<String, Object> options) {
		  HashMap<String,Object> params = new HashMap<>();
	        params.put("startIndex", (pageNo - 1) * pageSize);
	        params.put("size", pageSize);
	        
	        if (options != null) {
	            params.putAll(options);
	        }
	        
	        return choirTeacherDao.findAll(params);
	}


	@Override
	public int getTotalCount(HashMap<String, Object> options) {
		return choirTeacherDao.countAll(options);
	}


	@Override
	public Choir_Teacher get(int no) {
		return choirTeacherDao.findByNo(no);
	}


	@Override
	public int choirUpdate(Choir_Teacher choirTeacher) {
		return choirTeacherDao.choirUpdate(choirTeacher);
	} 
    

}
