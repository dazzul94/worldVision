package java100.app.dao.ConcertDao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Concert.Repertory;

public interface RepertoryDao {
    List<Repertory> findAll(Map<String,Object> params);
    int countAll(Map<String, Object> options);
	/*Bluead_Schedule getSchedule(int no);

	int update(Bluead_Schedule bluead_schedule);

	int delete(int no);

	int insert(Bluead_Schedule bluead_Schedule);*/
	Repertory findByNo(int no);
}















