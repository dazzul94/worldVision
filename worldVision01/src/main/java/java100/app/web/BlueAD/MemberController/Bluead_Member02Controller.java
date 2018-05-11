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
	public String update(@RequestParam(value = "gubun") String gubun, HttpServletRequest request, Bluead_Member02 bluead_Member02) throws Exception {
		if (gubun.equals("terms")) {
			System.out.println("텀");
			bluead_Member02.setContents2(bluead_member02Service.getTermsCont().getContents2());
		} else {
			System.out.println("펄");
			bluead_Member02.setContents1(bluead_member02Service.getTermsCont().getContents1());
		}
		bluead_member02Service.update(bluead_Member02);
		System.out.println(gubun);
		System.out.println("BlueAD/bluead_member/member02/termsView?gubun=" + gubun);
		return "redirect:termsView?gubun=" + gubun;
	}
	@RequestMapping("termsView")
	public String termsView(@RequestParam(value = "gubun") String gubun, Model model) throws Exception {
		
		Bluead_Member02 termsCont = bluead_member02Service.getTermsCont();
		
		model.addAttribute("bluead_member02", termsCont);
		model.addAttribute("gubun", gubun);
		return "BlueAD/bluead_member/member02/termsView";
	}
}
