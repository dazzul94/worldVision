package java100.app.web.BlueAD.MemberController;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Member.Bluead_Member;
import java100.app.service.MemberService.Bluead_MemberService;

@Controller
@RequestMapping("/bluead_member/member01")
public class Bluead_MemberController {

	@Autowired
	Bluead_MemberService bluead_memberService;

	static Logger logger = Logger.getLogger(Bluead_MemberController.class);

	@RequestMapping("list")
	public String list(@RequestParam(value = "pn", defaultValue = "1") int pageNo,
			@RequestParam(value = "ps", defaultValue = "20") int pageSize,
			@RequestParam(value = "select", defaultValue = "all") String select,
			@RequestParam(value = "member_join_type", defaultValue = "") String member_join_type,
			@RequestParam(value = "words", required = false) String[] words,
			@RequestParam(value = "oc", required = false) String orderColumn,
			@RequestParam(value = "al", required = false) String align,
			@RequestParam(value = "type", defaultValue = "1") String type, Model model) throws Exception {

		logger.fatal("fatal.....");
		logger.error("error.....");
		logger.warn("warn.....");
		logger.info("info.....");
		logger.debug("debug.....");
		logger.trace("trace....");

		// UI 제어와 관련된 코드는 이렇게 페이지 컨트롤러에 두어야 한다.
		//
		if (pageNo < 1) {
			pageNo = 1;
		}

		if (pageSize < 20 || pageSize > 30) {
			pageSize = 20;
		}

		// 코드의 실행 상태를 확인하기 위해
		// 코드 중간에 변수의 값을 출력할 때가 있다.
		// 보통 다음과 같이 출력문을 작성한다.
		System.out.printf("pageNo=%d, pageSize=%d\n", pageNo, pageSize);

		HashMap<String, Object> options = new HashMap<>();
		if (select != null) {
			options.put("select", select);
			model.addAttribute("select", select);
		}
		if (member_join_type != null) {
			options.put("member_join_type", member_join_type);
			model.addAttribute("member_join_type", member_join_type);
		}
		if (type != null) {
			options.put("type", type);
			model.addAttribute("type", type);
		}
		if (words != null && words[0].length() > 0) {
			System.out.println(words[0]);
			options.put("words", words);
			model.addAttribute("words", words[0]);// 페이지 넘겨도 검색조건 가져오기
		}
		options.put("orderColumn", orderColumn);
		options.put("align", align);

		int totalCount = bluead_memberService.getTotalCount(options);
		int lastPageNo = totalCount / pageSize;
		if ((totalCount % pageSize) > 0) {
			lastPageNo++;
		}

		// view 컴포넌트가 사용할 값을 Model에 담는다.
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("lastPageNo", lastPageNo);
		model.addAttribute("pageSize", pageSize);

		model.addAttribute("list", bluead_memberService.list(pageNo, pageSize, options));
		
		return "BlueAD/bluead_member/member01/list";
	}

	@RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("bluead_member", bluead_memberService.get(no));
		return "BlueAD/bluead_member/member01/view";
	}
	/*수정할 페이지*/
	@RequestMapping(value="viewUpdate", method=RequestMethod.GET)
	public String viewUpdate(@RequestParam(value = "no", defaultValue = "0") int no, Model model,Bluead_Member bluead_Member) throws Exception {
		model.addAttribute("bluead_member", bluead_memberService.vup(no));
		return "BlueAD/bluead_member/member01/viewUpdate";
	}

	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/bluead_member/member01/form";

	}
	/* 합창단과의 관계 변경  */
	@RequestMapping("update")
	public String update(HttpServletRequest request, Bluead_Member bluead_Member) throws Exception {
		bluead_memberService.update(bluead_Member);
		return "redirect:" + (String) request.getHeader("Referer");
	}
	/* 회원 수정  */
	@RequestMapping("update2")
	public String update2(HttpServletRequest request, Bluead_Member bluead_Member) throws Exception {
		bluead_memberService.update2(bluead_Member);
		return "redirect:list";
	}

	@RequestMapping("delete")
	public String delete(int no) throws Exception {

		bluead_memberService.delete(no);
		return "redirect:list";
	}

	@RequestMapping("deleteAll")
	public String deleteAll(HttpServletRequest request, String no) throws Exception {

		String[] splitNo = no.split(",");
		int[] realNo = new int[splitNo.length];
		;
		for (int i = 0; i < splitNo.length; i++) {
			realNo[i] = Integer.parseInt(splitNo[i]);
			System.out.println(realNo[i]);
		}
		HashMap<String, Object> numbers = new HashMap<>();
		if (realNo != null) {
			numbers.put("numbers", realNo);
		}
		bluead_memberService.deleteAll(numbers);
		/*
		 * System.out.println((String)request.getHeader("Referer")); String
		 * decodeResult =
		 * URLDecoder.decode((String)request.getHeader("Referer"), "UTF-8");
		 * System.out.println(decodeResult);
		 */
		return "redirect:" + (String) request.getHeader("Referer");
	}

	@RequestMapping("add")
	public String add(HttpServletRequest request, Bluead_Member bluead_Member) throws Exception {

		bluead_memberService.update(bluead_Member);
		return "redirect:" + (String) request.getHeader("Referer");
	}

}
