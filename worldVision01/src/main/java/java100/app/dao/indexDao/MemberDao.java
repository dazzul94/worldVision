package java100.app.dao.indexDao;

import java.util.Map;

import java100.app.domain.index.Member;

public interface MemberDao {
	Member getMember(String id);
	String checkId(String id);
	String checkPass(Map<String, Object> params);
	void insertMember(Member member);
	String findId(Map<String, Object> params);
}
