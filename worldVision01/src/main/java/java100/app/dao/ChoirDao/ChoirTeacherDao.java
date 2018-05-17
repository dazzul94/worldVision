package java100.app.dao.ChoirDao;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.Choir_Teacher;

public interface ChoirTeacherDao {

	int countAll(HashMap<String, Object> options);

	List<Choir_Teacher> findAll(HashMap<String, Object> params);

	Choir_Teacher findByNo(int no);

	int choirUpdate(Choir_Teacher choirTeacher);
}















