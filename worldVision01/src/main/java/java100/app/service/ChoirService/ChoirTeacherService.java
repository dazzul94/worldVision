package java100.app.service.ChoirService;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.Choir_Teacher;

public interface ChoirTeacherService {


	List<Choir_Teacher> list(int pageNo, int pageSize, HashMap<String, Object> options);

	int getTotalCount(HashMap<String, Object> options);

	Choir_Teacher get(int no);

	int choirUpdate(Choir_Teacher choirTeacher);

}
