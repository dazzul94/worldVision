package java100.app.service.indexService;

import java.util.Map;

import java100.app.domain.index.Member;

public interface MemberService {
	Member getMember(String id);
	String checkId(String id);
	String checkPass(Map<String, Object> params);
	void insertMember(Member member);
	String findId(Map<String, Object> params);
}
