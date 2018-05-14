package java100.app.service.ConcertService;

import java.util.List;
import java.util.Map;

import java100.app.domain.Concert.Repertory;

public interface RepertoryService {
	List<Repertory> list(int pageNo, int pageSize, Map<String,Object> options);
	/*Bluead_Schedule getSchedule(int no);
	int update(Bluead_Schedule bluead_schedule);
	int delete(int no);
	int add(Bluead_Schedule bluead_Schedule);*/
	int getTotalCount(Map<String, Object> options);
}
