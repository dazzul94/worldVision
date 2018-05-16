package java100.app.dao.ChoirDao;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.ChoirTeacher;

public interface ChoirTeacherDao {

	int countAll(HashMap<String, Object> options);

	List<ChoirTeacher> findAll(HashMap<String, Object> params);

	ChoirTeacher findByNo(int no);

	int choirUpdate(ChoirTeacher choirTeacher);
}















