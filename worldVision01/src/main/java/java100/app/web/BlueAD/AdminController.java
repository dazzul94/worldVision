package java100.app.web.BlueAD;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping("default")
    public String main() throws Exception {
        return "BlueAD/admin/default";
    }
    @RequestMapping("default2")
    public String main2() throws Exception {
        return "BlueAD/admin/default2";
    }
    @RequestMapping("default3")
    public String main3() throws Exception {
        return "BlueAD/admin/default3";
    }
}








