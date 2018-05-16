package java100.app.dao.Admin;

import java.util.Map;

import java100.app.domain.Admin.Login;

public interface LoginDao {
//참고 src77
    Login findByEmailAndPassword(Map<String,Object> params);
}
