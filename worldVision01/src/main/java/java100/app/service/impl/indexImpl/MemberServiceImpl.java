package java100.app.service.impl.indexImpl;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.indexDao.MemberDao;
import java100.app.domain.index.Member;
import java100.app.service.indexService.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;
	
	static Logger logger = Logger.getLogger(MemberServiceImpl.class); 
	
	@Override
	public Member getMember(String id) {
		logger.debug("MemberService.getMember()..... 호출됨!");
		return dao.getMember(id);
	}

	@Override
	public String checkId(String id) {
		logger.debug("MemberService.checkId()..... 호출됨!");
		return dao.checkId(id);
	}

	@Override
	public String checkPass(Map<String, Object> params) {
		logger.debug("MemberService.checkPass()..... 호출됨!");
		return dao.checkPass(params);
	}

	@Override
	public void insertMember(Member member) {
		logger.debug("MemberService.insertMember()..... 호출됨!");
		dao.insertMember(member);
	}

	@Override
	public String findId(Map<String, Object> params) {
		logger.debug("MemberService.findId()..... 호출됨!");
		return dao.findId(params);
	}
	
}
