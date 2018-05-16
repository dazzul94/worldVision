package java100.app.service.ChoirService;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.ChoirTeacher;

public interface ChoirTeacherService {


	List<ChoirTeacher> list(int pageNo, int pageSize, HashMap<String, Object> options);

	int getTotalCount(HashMap<String, Object> options);

	ChoirTeacher get(int no);

	int choirUpdate(ChoirTeacher choirTeacher);

}
