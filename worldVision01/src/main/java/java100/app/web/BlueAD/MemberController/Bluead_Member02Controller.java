package java100.app.web.BlueAD.MemberController;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/bluead_member/member02")
public class Bluead_Member02Controller {

	/*@Autowired
	Bluead_MemberService bluead_memberService;
*/


	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/bluead_member/member02/form";

	}



}
