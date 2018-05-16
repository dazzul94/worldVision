package java100.app.service.impl.AdminImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.AdminDao.LoginDao;
import java100.app.domain.Admin.Login;
import java100.app.service.AdminService.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired 
    LoginDao loginDao;
    
    @Override
    public Login get(String admin_id, String admin_pass) {
        HashMap<String,Object> params = new HashMap<>();
        params.put("admin_id", admin_id);
        params.put("admin_pass", admin_pass);
        
        return loginDao.findByIDAndPassword(params);   
        }

}
