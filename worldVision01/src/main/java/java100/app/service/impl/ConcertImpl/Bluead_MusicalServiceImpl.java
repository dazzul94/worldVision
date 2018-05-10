package java100.app.service.impl.ConcertImpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.ConcertDao.Bluead_MusicalDao;
import java100.app.domain.Concert.Bluead_Musical;
import java100.app.service.ConcertService.Bluead_MusicalService;

@Service
public class Bluead_MusicalServiceImpl implements Bluead_MusicalService {

	@Autowired
	Bluead_MusicalDao bluead_musicalDao;

	static Logger logger = Logger.getLogger(Bluead_MusicalServiceImpl.class);

	@Override
	public Bluead_Musical getMusicalCont() {
		return bluead_musicalDao.findMusicalCont();
	}

	@Override
	public Bluead_Musical getMissionCont() {
		return bluead_musicalDao.findMission();
	}

	@Override
	public Bluead_Musical getPlanCont() {
		return bluead_musicalDao.findPlan();
	}

	@Override
	public Bluead_Musical getForeignCont() {
		return bluead_musicalDao.findForeign();
	}

	@Override
	public int missionUpdate(Bluead_Musical bluead_Musical) {
		return bluead_musicalDao.missionUpdate(bluead_Musical);
	}

	@Override
	public int planUpdate(Bluead_Musical bluead_Musical) {
		return bluead_musicalDao.planUpdate(bluead_Musical);
	}

	@Override
	public int foreignUpdate(Bluead_Musical bluead_Musical) {
		return bluead_musicalDao.foreignUpdate(bluead_Musical);
	}

	@Override
	public int musicalUpdate(Bluead_Musical bluead_Musical) {
		return bluead_musicalDao.musicalUpdate(bluead_Musical);
	}



}
