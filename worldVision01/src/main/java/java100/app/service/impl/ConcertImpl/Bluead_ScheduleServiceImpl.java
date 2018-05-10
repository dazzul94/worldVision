package java100.app.service.impl.ConcertImpl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.ConcertDao.Bluead_ScheduleDao;
import java100.app.domain.Concert.Bluead_Schedule;
import java100.app.service.ConcertService.Bluead_ScheduleService;

@Service
public class Bluead_ScheduleServiceImpl implements Bluead_ScheduleService {

	@Autowired
	Bluead_ScheduleDao bluead_ScheduleDao;

	static Logger logger = Logger.getLogger(Bluead_ScheduleServiceImpl.class);

	@Override
	public List<Bluead_Schedule> list() {

		logger.debug("Bluead_ScheduleService.list()..... 호출됨!");

		return bluead_ScheduleDao.findAll();
	}

	@Override
	public Bluead_Schedule getSchedule(int no) {
		return bluead_ScheduleDao.getSchedule(no);
	}

	@Override
	public int update(Bluead_Schedule bluead_schedule) {
		return bluead_ScheduleDao.update(bluead_schedule);
	}

	@Override
	public int delete(int no) {
		return bluead_ScheduleDao.delete(no);
	}


}
