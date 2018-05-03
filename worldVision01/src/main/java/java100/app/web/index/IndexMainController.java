package java100.app.web.index;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexMainController {
	
	@Autowired
	private IndexDAO dao;
	
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
		String sql = "SELECT contents, year, month, cate "
				+ "FROM bluead_history "
				+ "WHERE cate = '1' ORDER BY year DESC, month DESC";
		String sql2 = "SELECT contents, year, month, cate "
				+ "FROM bluead_history "
				+ "WHERE cate = '2' ORDER BY year DESC, month DESC";
		History[] hList1 = dao.getHistory(sql);
		History[] hList2 = dao.getHistory(sql2);
		
		model.addAttribute("hList1", hList1);
		model.addAttribute("hList2", hList2);
		
		return "choir/choir2";				
	}
	
	@RequestMapping("choir3")
	public String goChoir3() {
		
		return "choir/choir3";				
	}
	
	@RequestMapping("choir4")
	public String goChoir4() {
		
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
		
		return "gallery/gallery_view";
	}
	
	@RequestMapping("galleryWrite")
	public String goGalleryWrite() {
		
		return "gallery/gallery_write";
	}
	
	@RequestMapping("gallery2")
	public String goGallery2(Model model, HttpServletRequest request) {
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
				+ "FROM bluead_wv_gallery02 ORDER BY bbs_no DESC";

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
					+ "FROM bluead_wv_gallery02 WHERE " + temp;
		}
		int bCount = dao.getBoard(sql).length;
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_gallery02 "
				+ "ORDER BY bbs_no DESC LIMIT " + (cPage-1)*perPage + "," + perPage;
		if(search != null) {
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_gallery02 WHERE " + temp + 
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
		
		return "gallery/gallery2";
	}
	
	@RequestMapping("gallery3")
	public String goGallery3(Model model, HttpServletRequest request) {
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
				+ "FROM bluead_wv_gallery04 ORDER BY bbs_no DESC";

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
					+ "FROM bluead_wv_gallery04 WHERE " + temp;
		}
		int bCount = dao.getBoard(sql).length;
		int maxPage = bCount / 12 + 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
				+ "FROM bluead_wv_gallery04 "
				+ "ORDER BY bbs_no DESC LIMIT " + (cPage-1)*perPage + "," + perPage;
		if(search != null) {
			sql = "SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date "
					+ "FROM bluead_wv_gallery04 WHERE " + temp + 
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
	
	@RequestMapping("findId")
	public String goFind(Model model, HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String sql = "SELECT member_id FROM bluead_member WHERE member_name = '" + name + "' && member_email = '" + email + "'";
		String id = dao.getFindId(sql);
		model.addAttribute("findId", id);
		
		return "member/findid";
	}
	
	@RequestMapping("doJoin")
	public String doJoin(Member member) {
		dao.insertMember(member);
		
		return "redirect:/member/login";
	}
}
