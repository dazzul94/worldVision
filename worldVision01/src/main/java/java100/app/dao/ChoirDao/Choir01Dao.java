package java100.app.dao.ChoirDao;

import java.util.HashMap;
import java.util.List;

import java100.app.domain.Choir.Choir01;

public interface Choir01Dao {

	int countAll(HashMap<String, Object> options);

	List<Choir01> findAll(HashMap<String, Object> params);

	Choir01 findByNo(int no);

	int choirUpdate(Choir01 choir01);
}















