package java100.app.service.ConcertService;

import java.util.List;

import java100.app.domain.Concert.Bluead_Schedule;

public interface Bluead_ScheduleService {
	List<Bluead_Schedule> list();
	Bluead_Schedule getSchedule(int no);
	int update(Bluead_Schedule bluead_schedule);

}
