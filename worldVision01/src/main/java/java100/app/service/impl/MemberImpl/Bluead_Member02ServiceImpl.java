package java100.app.service.impl.MemberImpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.MemberDao.Bluead_Member02Dao;
import java100.app.domain.Member.Bluead_Member02;
import java100.app.service.MemberService.Bluead_Member02Service;

@Service
public class Bluead_Member02ServiceImpl implements Bluead_Member02Service {

	@Autowired
	Bluead_Member02Dao bluead_member02Dao;

	static Logger logger = Logger.getLogger(Bluead_Member02ServiceImpl.class);

	@Override
	public int update(Bluead_Member02 bluead_Member02) {
		return bluead_member02Dao.update(bluead_Member02);
	}
	@Override
	public Bluead_Member02 get(int no) {
		return bluead_member02Dao.findByNo(no);
	}

}
