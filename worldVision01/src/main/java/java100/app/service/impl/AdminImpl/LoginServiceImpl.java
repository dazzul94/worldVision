package java100.app.service.impl.AdminImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.Admin.LoginDao;
import java100.app.domain.Admin.Login;
import java100.app.service.AdminService.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired 
    LoginDao loginDao;
    
    @Override
    public Login get(String id, String password) {
        HashMap<String,Object> params = new HashMap<>();
        params.put("id", id);
        params.put("password", password);
        
        return loginDao.findByEmailAndPassword(params);   
        }

}
