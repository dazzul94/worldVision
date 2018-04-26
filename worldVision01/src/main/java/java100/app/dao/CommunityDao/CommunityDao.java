package java100.app.dao.CommunityDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Community.Community;
import java100.app.domain.Request.Bluead_Online1;

public interface CommunityDao {
    List<Community> findAll(Map<String,Object> params);
    Community findByNo(int no);
    int countAll(Map<String,Object> options);
    int update(Community community);
    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
}














