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



}
