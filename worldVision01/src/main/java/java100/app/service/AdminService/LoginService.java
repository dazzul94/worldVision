package java100.app.service.AdminService;

import java100.app.domain.Admin.Login;

public interface LoginService {
    Login get(String admin_id, String admin_pass);  
}
