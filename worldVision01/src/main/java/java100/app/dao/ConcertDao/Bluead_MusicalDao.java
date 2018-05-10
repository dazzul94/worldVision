package java100.app.dao.ConcertDao;

import java.util.HashMap;

import java100.app.domain.Concert.Bluead_Musical;

public interface Bluead_MusicalDao {

	Bluead_Musical findMusicalCont();

	Bluead_Musical findMission();

	Bluead_Musical findPlan();

	Bluead_Musical findForeign();

	int missionUpdate(Bluead_Musical bluead_Musical);

	int planUpdate(Bluead_Musical bluead_Musical);

	int foreignUpdate(Bluead_Musical bluead_Musical);

	int musicalUpdate(Bluead_Musical bluead_Musical);

	/* Bluead_Musical musicalView(HashMap<String, Object> options); */
}
