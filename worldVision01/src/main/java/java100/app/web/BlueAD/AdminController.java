package java100.app.web.BlueAD;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping("main")
    public String main() throws Exception {
        return "BlueAD/admin/main";
    }
}








