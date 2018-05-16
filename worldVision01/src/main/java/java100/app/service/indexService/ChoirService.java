package java100.app.service.indexService;

import java100.app.domain.index.ChoirMember;
import java100.app.domain.index.ChoirTeacher;
import java100.app.domain.index.History;

public interface ChoirService {
	History[] getInternalHistory();
	History[] getForeignHistory();
	ChoirTeacher[] getChoirTeacherList(int c_no);
	ChoirMember[] getChoirMemberList(int c_no);
}
