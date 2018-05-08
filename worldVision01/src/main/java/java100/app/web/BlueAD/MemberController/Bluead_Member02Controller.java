package java100.app.web.BlueAD.MemberController;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Member.Bluead_Member02;
import java100.app.service.MemberService.Bluead_Member02Service;



@Controller
@RequestMapping("/bluead_member/member02")
public class Bluead_Member02Controller {

	@Autowired
	Bluead_Member02Service bluead_member02Service;



	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/bluead_member/member02/form";

	}

	@RequestMapping("update")
	public String update(HttpServletRequest request, Bluead_Member02 bluead_Member02) throws Exception {
		bluead_member02Service.update(bluead_Member02);
		return "BlueAD/bluead_member/member02/termsView";
	}
	@RequestMapping("termsView")
	public String termsView(@RequestParam(value = "gubun") String gubun, Model model) throws Exception {
		
		Bluead_Member02 termsCont = bluead_member02Service.getTermsCont();
		
		model.addAttribute("bluead_member02", termsCont);
		model.addAttribute("gubun", gubun);
		return "BlueAD/bluead_member/member02/termsView";
	}
}
