package java100.app.service.impl.indexImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.indexDao.ChoirDao;
import java100.app.domain.index.ChoirMember;
import java100.app.domain.index.ChoirTeacher;
import java100.app.domain.index.History;
import java100.app.service.indexService.ChoirService;

@Service
public class ChoirServiceImpl implements ChoirService {
	
	@Autowired
	private ChoirDao dao;
	
	@Override
	public History[] getInternalHistory() {
		return dao.getInternalHistory();
	}

	@Override
	public History[] getForeignHistory() {
		return dao.getForeignHistory();
	}

	@Override
	public ChoirTeacher[] getChoirTeacherList(int c_no) {
		return dao.getChoirTeacherList(c_no);
	}

	@Override
	public ChoirMember[] getChoirMemberList(int c_no) {
		return dao.getChoirMemberList(c_no);
	}
	
}
