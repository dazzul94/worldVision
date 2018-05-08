package java100.app.dao.MemberDao;

import java100.app.domain.Member.Bluead_Member;
import java100.app.domain.Member.Bluead_Member02;

public interface Bluead_Member02Dao {

	int update(Bluead_Member02 bluead_Member02);

	Bluead_Member02 findByNo(int no);

	Bluead_Member02 findTermsCont();
}
