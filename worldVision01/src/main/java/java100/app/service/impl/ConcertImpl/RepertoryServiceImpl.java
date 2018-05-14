package java100.app.service.impl.ConcertImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.ConcertDao.RepertoryDao;
import java100.app.domain.Concert.Repertory;
import java100.app.service.ConcertService.RepertoryService;

@Service
public class RepertoryServiceImpl implements RepertoryService {
	
	@Autowired RepertoryDao repertoryDao;

	static Logger logger = Logger.getLogger(RepertoryServiceImpl.class); 
	
	@Override
	public List<Repertory> list(int pageNo, int pageSize, Map<String, Object> options) {
		logger.debug("Bluead_OnlineServiceImpl.list()..... 호출됨!");

		HashMap<String,Object> params = new HashMap<>();
		params.put("startIndex", (pageNo - 1) * pageSize);
		params.put("size", pageSize);

		if (options != null) {
			params.putAll(options);
		}

		return repertoryDao.findAll(params);
	}

	@Override
	public int getTotalCount(Map<String, Object> options) {
		return repertoryDao.countAll(options);
	}

}
