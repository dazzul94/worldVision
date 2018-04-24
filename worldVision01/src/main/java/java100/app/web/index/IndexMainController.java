package java100.app.web.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexMainController {
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
	public String goChoir2() {
		
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
	
	@RequestMapping("board")
	public String goBoard() {
		
		return "board/board";
	}
}
