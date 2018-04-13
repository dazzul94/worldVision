package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Bluead_Member;
import java100.app.domain.Member;

public interface Bluead_MemberDao {
    List<Bluead_Member> findAll(Map<String,Object> params);
    Bluead_Member findByNo(int no);
   /* Member findByEmailAndPassword(Map<String,Object> params);
    Member findByEmail(String email);*/
    int countAll();
   /* int insert(Member member);
    int update(Member member);
    int delete(int no);*/
}















