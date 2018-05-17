package java100.app.web.index;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java100.app.domain.index.Board;
import java100.app.domain.index.ChoirMember;
import java100.app.domain.index.ChoirTeacher;
import java100.app.domain.index.Comment;
import java100.app.domain.index.History;
import java100.app.domain.index.Member;
import java100.app.service.indexService.BoardService;
import java100.app.service.indexService.ChoirService;
import java100.app.service.indexService.MemberService;

@Controller
@SessionAttributes("member")
public class IndexMainController {
	
	@Autowired
	private IndexDAO dao;
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private ChoirService choirService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/")
	public String goMain() {		
		return "main";
	}
	
	@RequestMapping("about")
	public String goAbout() {	
		return "about/about";
	}
	
	@RequestMapping("about2")
	public String goAbout2() {		
		return "about/about2";
	}
	
	@RequestMapping("about3")
	public String goAbout3() {		
		return "about/about3";
	}
	
	@RequestMapping("choir")
	public String goChoir() {		
		return "choir/choir";				
	}
	
	@RequestMapping("choir2")
	public String goChoir2(Model model) {

		History[] internal_hList = choirService.getInternalHistory();
		History[] foreign_hList = choirService.getForeignHistory();
		
		model.addAttribute("internal_hList", internal_hList);
		model.addAttribute("foreign_hList", foreign_hList);
		
		return "choir/choir2";				
	}
	
	@RequestMapping("choir3")
	public String goChoir3(Model model) {
		ChoirTeacher[] ctList = choirService.getChoirTeacherList(1);
		model.addAttribute("ctList", ctList);
		ChoirMember[] cmList = choirService.getChoirMemberList(1);
		model.addAttribute("cmList", cmList);
		
		return "choir/choir3";				
	}
	
	@RequestMapping("choir4")
	public String goChoir4(Model model) {
		
		ChoirTeacher[] ctList = choirService.getChoirTeacherList(3);
		ChoirTeacher[] ctList2 = choirService.getChoirTeacherList(4);
		ChoirTeacher[] ctList3 = choirService.getChoirTeacherList(5);
		ChoirTeacher[] ctList4 = choirService.getChoirTeacherList(6);
		ChoirTeacher[] ctList5 = choirService.getChoirTeacherList(8);
		
		model.addAttribute("ctList", ctList);
		model.addAttribute("ctList2", ctList2);
		model.addAttribute("ctList3", ctList3);
		model.addAttribute("ctList4", ctList4);
		model.addAttribute("ctList5", ctList5);

		ChoirMember[] cmList = choirService.getChoirMemberList(3);
		ChoirMember[] cmList2 = choirService.getChoirMemberList(4);
		ChoirMember[] cmList3 = choirService.getChoirMemberList(5);
		ChoirMember[] cmList4 = choirService.getChoirMemberList(6);
		ChoirMember[] cmList5 = choirService.getChoirMemberList(8);
		
		model.addAttribute("cmList", cmList);
		model.addAttribute("cmList2", cmList2);
		model.addAttribute("cmList3", cmList3);
		model.addAttribute("cmList4", cmList4);
		model.addAttribute("cmList5", cmList5);
		
		return "choir/choir4";				
	}
	
	@RequestMapping("concert")
	public String goConcert() {
		
		return "concert/concert";
	}
	
	@RequestMapping("concertView")
	public String goConcertView() {
		
		return "concert/concert_view";
	}
	
	@RequestMapping("concert2")
	public String goConcert2() {
		
		return "concert/concert2";
	}
	
	@RequestMapping("concert3")
	public String goConcert3() {
		
		return "concert/concert3";
	}
	
	@RequestMapping("concert4")
	public String goConcert4() {
		
		return "concert/concert4";
	}
	
	@RequestMapping("concert5")
	public String goConcert5() {
		
		return "concert/concert5";
	}
	
	@RequestMapping("gallery")
	public String goGallery() {
		
		return "gallery/gallery";
	}
	
	@RequestMapping("galleryView")
	public String goGalleryView(Model model, HttpServletRequest request) {
		String str = request.getParameter("str");
		String dbName = request.getParameter("dbName");
		System.out.println("str = " + str);
		System.out.println("dbName = " + dbName);

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("dbName", dbName);
		params.put("no", request.getParameter("no"));
		Board board = boardService.getBoard(params);

		Comment[] cList = boardService.getCommentList(params);

		model.addAttribute("result", board);
		model.addAttribute("cPage", request.getParameter("cPage"));
		model.addAttribute("str", str);
		model.addAttribute("dbName", dbName);
		model.addAttribute("cList", cList);
		model.addAttribute("no", request.getParameter("no"));
		if(request.getParameter("search") != null) {
			model.addAttribute("search", request.getParameter("search"));
			model.addAttribute("cateSelect", request.getParameter("cateSelect"));
			model.addAttribute("sText", request.getParameter("sText"));
		}
		
		return "gallery/gallery_view";
	}
	
	@RequestMapping("writeComment")
	public String writeComment(HttpServletRequest request, RedirectAttributes ra) {
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMddhhmm");
		String tStr = dayTime.format(new Date(time));
		Comment comment = new Comment();
		comment.setComm_content(request.getParameter("comm_content"));
		comment.setComm_date(tStr);
		comment.setComm_bbs_id("wv_" + request.getParameter("dbName"));
		comment.setComm_bbs_no(Integer.parseInt(request.getParameter("no")));
		comment.setComm_name("공");
		boardService.insertComment(comment);
		ra.addAttribute("str", request.getParameter("str"));
		ra.addAttribute("dbName", request.getParameter("dbName"));
		ra.addAttribute("cPage", request.getParameter("cPage"));
		ra.addAttribute("search", request.getParameter("search"));
		ra.addAttribute("cateSelect", request.getParameter("cateSelect"));
		ra.addAttribute("sText", request.getParameter("sText"));
		ra.addAttribute("no", request.getParameter("no"));

		return "redirect:galleryView";
	}
	
	@RequestMapping("galleryWrite")
	public String goGalleryWrite(Model model, HttpServletRequest request) {
		String str = "사진갤러리";
		if(request.getParameter("mod").equals("2")) {
			str = "포스터/이미지";
		}
		model.addAttribute("str", str);
		return "gallery/gallery_write";
	}
	@RequestMapping("doGalleryWrite")
	public String doGalleryWrite() {
		
		return null;
	}
	@RequestMapping("gallery2")
	public String goGallery2(Model model, HttpServletRequest request) {
		String str_pNum = request.getParameter("cPage");	// 현재 페이지 번호
		String search = request.getParameter("search");		// 검색으로 왔는지 그냥 왔는지 확인하는 변수 (그냥 = null, 검색 = 1)
		String cateSelect = request.getParameter("cateSelect");	// 검색일 때 어떤 항목으로 왔는지(제목 = 1, 내용 = 2, 제목 + 내용 = 3)
		String sText = request.getParameter("sText");	//	검색어
		
		int cPage = 0;
		int perPage = 12;
		if(str_pNum == null) {
			cPage = 1;
		}else {
			cPage = Integer.parseInt(str_pNum);
		}
		int perPageCount = 10;
		int startPage = ((cPage - 1) / perPageCount) * perPageCount + 1;
		int endPage = startPage + perPageCount - 1;

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("dbName", "bluead_wv_gallery02");
		params.put("sText", sText);
		params.put("cateSelect", cateSelect);
		
		int bCount = boardService.getCountBoard(params);
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		int start_no = (cPage-1) * perPage;
		params.put("start_no",start_no);
		params.put("perPage", perPage);

		if(search != null) {
			model.addAttribute("search", search);
			model.addAttribute("cateSelect", cateSelect);
			model.addAttribute("sText", sText);
		}
		Board[] bList = boardService.getBoardList(params);
		model.addAttribute("bList", bList);
		model.addAttribute("bCount", bCount);
		model.addAttribute("cPage", cPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "gallery/gallery2";
	}
	
	@RequestMapping("gallery3")
	public String goGallery3(Model model, HttpServletRequest request) {
		String str_pNum = request.getParameter("cPage");	// 현재 페이지 번호
		String search = request.getParameter("search");		// 검색으로 왔는지 그냥 왔는지 확인하는 변수 (그냥 = null, 검색 = 1)
		String cateSelect = request.getParameter("cateSelect");	// 검색일 때 어떤 항목으로 왔는지(제목 = 1, 내용 = 2, 제목 + 내용 = 3)
		String sText = request.getParameter("sText");	//	검색어
		
		int cPage = 0;
		int perPage = 12;
		if(str_pNum == null) {
			cPage = 1;
		}else {
			cPage = Integer.parseInt(str_pNum);
		}
		int perPageCount = 10;
		int startPage = ((cPage - 1) / perPageCount) * perPageCount + 1;
		int endPage = startPage + perPageCount - 1;

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("dbName", "bluead_wv_gallery04");
		params.put("sText", sText);
		params.put("cateSelect", cateSelect);
		
		int bCount = boardService.getCountBoard(params);
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		int start_no = (cPage-1) * perPage;
		params.put("start_no",start_no);
		params.put("perPage", perPage);

		if(search != null) {
			model.addAttribute("search", search);
			model.addAttribute("cateSelect", cateSelect);
			model.addAttribute("sText", sText);
		}
		Board[] bList = boardService.getBoardList(params);
		model.addAttribute("bList", bList);
		model.addAttribute("bCount", bCount);
		model.addAttribute("cPage", cPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "gallery/gallery3";
	}
	
	@RequestMapping("gallery4")
	public String goGallery4() {
		
		return "gallery/gallery4";
	}
	
	@RequestMapping("request")
	public String goRequest() {
		return "request/request";
	}
	@RequestMapping("doRequest")
	public String doRequest(Application application) {
		dao.insertApplication(application);
		return "request/request";
	}
	@RequestMapping("request2")
	public String goRequest2() {
		
		return "request/request2";
	}
	
	@RequestMapping("request3")
	public String goRequest3() {
		
		return "request/request3";
	}
	
	@RequestMapping("request4")
	public String goRequest4() {
		
		return "request/request4";
	}
	
	@RequestMapping("board")
	public String goBoard(Model model, HttpServletRequest request) {
		String str_pNum = request.getParameter("cPage");	// 현재 페이지 번호
		String search = request.getParameter("search");		// 검색으로 왔는지 그냥 왔는지 확인하는 변수 (그냥 = null, 검색 = 1)
		String cateSelect = request.getParameter("cateSelect");	// 검색일 때 어떤 항목으로 왔는지(제목 = 1, 내용 = 2, 제목 + 내용 = 3)
		String sText = request.getParameter("sText");	//	검색어
		String sql = null;
		String temp = null;
		
		int cPage = 0;
		int perPage = 12;
		if(str_pNum == null) {
			cPage = 1;
		}else {
			cPage = Integer.parseInt(str_pNum);
		}
		int perPageCount = 10;
		int startPage = ((cPage - 1) / perPageCount) * perPageCount + 1;
		int endPage = startPage + perPageCount - 1;
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_community01 ORDER BY bbs_no DESC";

		if(search != null) {
			if (cateSelect.equals("1")) {
				temp = "bbs_subject like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else if(cateSelect.equals("2")) {
				temp = "bbs_content like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else{
				temp = "bbs_subject like '%" + sText + "%' or bbs_content like '%" 
						+ sText + "%' ORDER BY bbs_no DESC";
			}
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_community01 WHERE " + temp;
		}
		int bCount = dao.getBoard(sql).length;
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_community01 "
				+ "ORDER BY bbs_no DESC LIMIT " + (cPage-1)*perPage + "," + perPage;
		if(search != null) {
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_community01 WHERE " + temp + 
					" LIMIT " + (cPage-1)*perPage + "," + perPage;
			model.addAttribute("search", search);
			model.addAttribute("cateSelect", cateSelect);
			model.addAttribute("sText", sText);
		}
		Board[] bList = dao.getBoard(sql);
		model.addAttribute("bList", bList);
		model.addAttribute("bCount", bCount);
		model.addAttribute("cPage", cPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "board/board";
	}
	
	@RequestMapping("boardView")
	public String goBoardView(Model model, HttpServletRequest request) {
		String str = request.getParameter("str");
		String dbName = request.getParameter("dbName");
		String sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_" + dbName + " WHERE bbs_no = " + request.getParameter("no");
		Board[] list = dao.getBoard(sql);
		String cSql = "SELECT comm_no, comm_bbs_id, comm_name, comm_content, comm_pass, comm_date "
				+ "FROM bluead_comment WHERE comm_bbs_id = 'wv_" + dbName + 
				"' && comm_bbs_no = " + request.getParameter("no") + " ORDER BY comm_no DESC";
		Comment[] cList = dao.getComment(cSql);
		
		model.addAttribute("result", list[0]);
		model.addAttribute("cPage", request.getParameter("cPage"));
		model.addAttribute("str", str);
		model.addAttribute("dbName", dbName);
		model.addAttribute("cList", cList);
		if(request.getParameter("search") != null) {
			model.addAttribute("search", request.getParameter("search"));
			model.addAttribute("cateSelect", request.getParameter("cateSelect"));
			model.addAttribute("sText", request.getParameter("sText"));
			
		}
		return "board/board_view";
	}
	
	@RequestMapping("boardWrite")
	public String goBoardWrite() {
		
		return "board/board_write";
	}
	
	@RequestMapping("board2")
	public String goBoard2(Model model, HttpServletRequest request) {
		String str_pNum = request.getParameter("cPage");	// 현재 페이지 번호
		String search = request.getParameter("search");		// 검색으로 왔는지 그냥 왔는지 확인하는 변수 (그냥 = null, 검색 = 1)
		String cateSelect = request.getParameter("cateSelect");	// 검색일 때 어떤 항목으로 왔는지(제목 = 1, 내용 = 2, 제목 + 내용 = 3)
		String sText = request.getParameter("sText");	//	검색어
		String sql = null;
		String temp = null;
		
		int cPage = 0;
		int perPage = 12;
		
		if(str_pNum == null) {
			cPage = 1;
		}else {
			cPage = Integer.parseInt(str_pNum);
		}
		int perPageCount = 10;
		int startPage = ((cPage - 1) / perPageCount) * perPageCount + 1;
		int endPage = startPage + perPageCount - 1;
		
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_data ORDER BY bbs_no DESC";

		if(search != null) {
			if (cateSelect.equals("1")) {
				temp = "bbs_subject like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else if(cateSelect.equals("2")) {
				temp = "bbs_content like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else{
				temp = "bbs_subject like '%" + sText + "%' or bbs_content like '%" 
						+ sText + "%' ORDER BY bbs_no DESC";
			}
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_data WHERE " + temp;
		}
		int bCount = dao.getBoard(sql).length;
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_data "
				+ "ORDER BY bbs_no DESC LIMIT " + (cPage-1)*perPage + "," + perPage;
		if(search != null) {
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_data WHERE " + temp + 
					" LIMIT " + (cPage-1)*perPage + "," + perPage;
			model.addAttribute("search", search);
			model.addAttribute("cateSelect", cateSelect);
			model.addAttribute("sText", sText);
		}
		Board[] bList = dao.getBoard(sql);
		model.addAttribute("bList", bList);
		model.addAttribute("bCount", bCount);
		model.addAttribute("cPage", cPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "board/board2";
	}
	
	@RequestMapping("board3")
	public String goBoard3(Model model, HttpServletRequest request) {
		String str_pNum = request.getParameter("cPage");	// 현재 페이지 번호
		String search = request.getParameter("search");		// 검색으로 왔는지 그냥 왔는지 확인하는 변수 (그냥 = null, 검색 = 1)
		String cateSelect = request.getParameter("cateSelect");	// 검색일 때 어떤 항목으로 왔는지(제목 = 1, 내용 = 2, 제목 + 내용 = 3)
		String sText = request.getParameter("sText");	//	검색어
		String sql = null;
		String temp = null;
		
		int cPage = 0;
		int perPage = 12;
		int perPageCount = 10;
		
		if(str_pNum == null) {
			cPage = 1;
		}else {
			cPage = Integer.parseInt(str_pNum);
		}
		
		int startPage = ((cPage - 1) / perPageCount) * perPageCount + 1;
		int endPage = startPage + perPageCount - 1;
				
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_webzine ORDER BY bbs_no DESC";

		if(search != null) {
			if (cateSelect.equals("1")) {
				temp = "bbs_subject like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else if(cateSelect.equals("2")) {
				temp = "bbs_content like '%" + sText + "%'  ORDER BY bbs_no DESC";
			}else{
				temp = "bbs_subject like '%" + sText + "%' or bbs_content like '%" 
						+ sText + "%' ORDER BY bbs_no DESC";
			}
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_webzine WHERE " + temp;
		}
		int bCount = dao.getBoard(sql).length;
		int maxPage = bCount / 12 + 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_webzine "
				+ "ORDER BY bbs_no DESC LIMIT " + (cPage-1)*perPage + "," + perPage;
		if(search != null) {
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_webzine WHERE " + temp + 
					" LIMIT " + (cPage-1)*perPage + "," + perPage;
			model.addAttribute("search", search);
			model.addAttribute("cateSelect", cateSelect);
			model.addAttribute("sText", sText);
		}
		Board[] bList = dao.getBoard(sql);
		model.addAttribute("bList", bList);
		model.addAttribute("bCount", bCount);
		model.addAttribute("cPage", cPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "board/board3";
	}
	
	@RequestMapping("login")
	public String goLogin() {
		return "member/login";
	}
	
	@RequestMapping("join")
	public String gojoin() {
		return "member/join";
	}
	
	@RequestMapping("join2")
	public String gojoin2(Model model, HttpServletRequest request) {
		model.addAttribute("name", request.getParameter("name"));
		System.out.println(request.getParameter("name"));
		return "member/join2";
	}
	
	@RequestMapping("find")
	public String goFind() {
		return "member/findid";
	}
	
	@RequestMapping("findId")
	public String findId(Model model, HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", name);
		params.put("email", email);
		String id = memberService.findId(params);
		model.addAttribute("findId", id);
		return null;
	}
	
	@RequestMapping("doJoin")
	public String doJoin(Member member) {
		memberService.insertMember(member);	
		return "redirect:login";
	}
	
	@RequestMapping("doLogin")
	public String doLogin(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String jspPage = "member/login";
		
		String msg = "";
		if(memberService.checkId(id) != null) {
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("id", id);
			params.put("pass", pass);
			if(memberService.checkPass(params) != null) {
				System.out.println("로그인 성공");
				Member member = memberService.getMember(id);
				msg = member.getMember_name() + "님 로그인 되셨습니다.";
				model.addAttribute("member", member);
				jspPage = "main";
			}else {
				System.out.println("비밀번호가 틀렸습니다.");
				msg = "비밀번호가 틀렸습니다.";
			}
		}else {
			System.out.println("id가 없습니다.");
			msg = "id가 없습니다.";
		}
		
		model.addAttribute("msg", msg);
		return jspPage;
	}
	
	@RequestMapping("logout")
	public String logout(SessionStatus sStatus) {
		sStatus.setComplete();
		return "redirect:/index/";
	}
}

