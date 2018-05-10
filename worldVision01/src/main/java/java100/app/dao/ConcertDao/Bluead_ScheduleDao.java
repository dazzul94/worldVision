package java100.app.dao.ConcertDao;

import java.util.List;

import java100.app.domain.Concert.Bluead_Schedule;

public interface Bluead_ScheduleDao {
    List<Bluead_Schedule> findAll();

	Bluead_Schedule getSchedule(int no);

	int update(Bluead_Schedule bluead_schedule);
}















