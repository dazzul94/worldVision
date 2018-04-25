package java100.app.dao.MemberDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Member.Bluead_Member;

public interface Bluead_MemberDao {
	List<Bluead_Member> findAll(Map<String, Object> params);

	Bluead_Member findByNo(int no);

	int countAll(Map<String, Object> options);

	int update(Bluead_Member bluead_Member);

	int insert(Bluead_Member bluead_Member);

	int delete(int no);

	int deleteAll(HashMap<String, Object> numbers);
}
