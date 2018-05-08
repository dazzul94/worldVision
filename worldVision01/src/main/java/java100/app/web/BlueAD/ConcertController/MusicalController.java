package java100.app.web.BlueAD.ConcertController;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java100.app.domain.Concert.Bluead_Musical;
import java100.app.service.ConcertService.Bluead_MusicalService;

@Controller
@RequestMapping("/concert/musical")
public class MusicalController {
	
	@Autowired
	Bluead_MusicalService bluead_MusicalService;
	
    static Logger logger = Logger.getLogger(MusicalController.class);

	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/concert/musical/form";

	}
   /* @RequestMapping("musicalView")
	public String musicalView(@RequestParam(value = "gubun") String gubun, Model model) throws Exception {
		
		Bluead_Musical musicalCont =  bluead_MusicalService.getMusicalCont();
		
		model.addAttribute("bluead_musical", musicalCont);
		model.addAttribute("gubun", gubun);
		return "BlueAD/concert/musical/musicalView";
	}*/
}








