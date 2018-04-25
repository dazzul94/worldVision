package java100.app.web.index;

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
		History[] hList1 = dao.getHistory1();
		History[] hList2 = dao.getHistory2();
		
		model.addAttribute("hList1", hList1);
		model.addAttribute("hList2", hList2);
		for(History h: hList1) {
			System.out.println(h);
		}
		for(History h: hList2) {
			System.out.println(h);
		}
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
	public String goGalleryView() {
		
		return "gallery/gallery_view";
	}
	
	@RequestMapping("galleryWrite")
	public String goGalleryWrite() {
		
		return "gallery/gallery_write";
	}
	
	@RequestMapping("gallery2")
	public String goGallery2() {
		
		return "gallery/gallery2";
	}
	
	@RequestMapping("gallery3")
	public String goGallery3() {
		
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
	public String goBoard() {
		
		return "board/board";
	}
	
	@RequestMapping("boardView")
	public String goBoardView() {
		
		return "board/board_view";
	}
	
	@RequestMapping("boardWrite")
	public String goBoardWrite() {
		
		return "board/board_write";
	}
	
	@RequestMapping("board2")
	public String goBoard2() {
		
		return "board/board2";
	}
	
	@RequestMapping("board3")
	public String goBoard3() {
		
		return "board/board3";
	}
}
