package java100.app.service.impl.MemberImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.MemberDao.Bluead_MemberDao;
import java100.app.domain.Member.Bluead_Member;
import java100.app.service.MemberService.Bluead_MemberService;

@Service
public class Bluead_MemberServiceImpl implements Bluead_MemberService {

	@Autowired
	Bluead_MemberDao bluead_memberDao;

	static Logger logger = Logger.getLogger(Bluead_MemberServiceImpl.class);

	@Override
	public List<Bluead_Member> list(int pageNo, int pageSize, Map<String, Object> options) {

		logger.debug("Bluead_MemberService.list()..... 호출됨!");

		HashMap<String, Object> params = new HashMap<>();
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

	@Override
	public int getTotalCount(Map<String, Object> options) {
		return bluead_memberDao.countAll(options);
	}

	@Override
	public int update(Bluead_Member bluead_Member) {
		return bluead_memberDao.update(bluead_Member);
	}
	@Override
	public int add(Bluead_Member bluead_Member) {
		return bluead_memberDao.insert(bluead_Member);
	}

	@Override
	public int deleteAll(HashMap<String, Object> numbers) {
		return bluead_memberDao.deleteAll(numbers);
	}

	@Override
	public int delete(int no) {
		return bluead_memberDao.delete(no);
	}
/*	@Override
	public int viewUpdate(Bluead_Member bluead_Member) {
		return bluead_memberDao.viewUpdate(bluead_Member);
	}
*/
	@Override
	public Bluead_Member vup(int no) {
		return bluead_memberDao.findByNo2(no);
		}
	@Override
	public int update2(Bluead_Member bluead_Member) {
		return bluead_memberDao.update2(bluead_Member);
	}


}
