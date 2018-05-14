package java100.app.service.ChoirService;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.Choir01;

public interface Choir01Service {


	 List<Choir01> list(int pageNo, int pageSize, HashMap<String, Object> options);

	int getTotalCount(HashMap<String, Object> options);

}
