package java100.app.dao.AdminDao;

import java.util.Map;

import java100.app.domain.Admin.Login;

public interface LoginDao {
//참고 src77
    Login findByIDAndPassword(Map<String,Object> params);
}
