package java100.app.service.MemberService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Member.Bluead_Member;
import java100.app.domain.Request.Bluead_Online1;

// => "역할"을 강조할 때는 "객체(object)"라는 말보다는 
//    "컴포넌트(component)"라는 말을 사용한다.
// => "객체"는 말 그대로 한 개의 클래스를 가리키는 것이라면,
//    "컴포넌트"는 그 역할을 수행하는 여러 객체의 묶음을 총칭한다.
//
// Service 컴포넌트(인터페이스, 구현체)는 "업무 로직"과 "트랜잭션 처리"를  
// 담당하기 때문에 인터페이스에 선언하는 메서드 이름도 
// 가능한 업무 용어를 사용한다.
//
public interface Bluead_MemberService {
	List<Bluead_Member> list(int pageNo, int pageSize, Map<String, Object> options);

	Bluead_Member get(int no);

	int getTotalCount(Map<String, Object> options);

	int update(Bluead_Member bluead_Member);

	int add(Bluead_Member bluead_Member);

	int delete(int no);

	int deleteAll(HashMap<String, Object> numbers);
	int viewUpdate(Bluead_Member bluead_Member);


}
