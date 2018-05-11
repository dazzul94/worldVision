
package java100.app.service.ConcertService;

import java100.app.domain.Concert.Bluead_Musical;

public interface Bluead_MusicalService {

	Bluead_Musical getMusicalCont();

	Bluead_Musical getMissionCont();

	Bluead_Musical getPlanCont();

	Bluead_Musical getForeignCont();

	int missionUpdate(Bluead_Musical bluead_Musical);

	int planUpdate(Bluead_Musical bluead_Musical);

	int foreignUpdate(Bluead_Musical bluead_Musical);

	int musicalUpdate(Bluead_Musical bluead_Musical);


}
