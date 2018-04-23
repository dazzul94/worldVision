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
	
	@RequestMapping("gallery")
	public String goGallery() {
		
		return "gallery/gallery";
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
