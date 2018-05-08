package java100.app.web.BlueAD.MemberController;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
		return "BlueAD/bluead_member/member02/view";
	}
	@RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("bluead_member02", bluead_member02Service.get(no));
		return "BlueAD/bluead_member/member01/view";
	}
}
