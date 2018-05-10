package java100.app.web.BlueAD.ConcertController;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Concert.Bluead_Musical;
import java100.app.domain.Member.Bluead_Member02;
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
	/*정기연주*/
   @RequestMapping("musicalView")
	public String musicalView( Model model) throws Exception {
		
		Bluead_Musical musicalCont =  bluead_MusicalService.getMusicalCont();
		
		model.addAttribute("bluead_musical", musicalCont);
		return "BlueAD/concert/musical/musicalView";
	}
   @RequestMapping("musicalUpdate")
   public String musicalUpdate(HttpServletRequest request, Bluead_Musical bluead_Musical) throws Exception {
	   bluead_MusicalService.musicalUpdate(bluead_Musical);
	   return "redirect:musicalView";
   }
   /*미션연주*/
   @RequestMapping("missionView")
	public String missionView( Model model) throws Exception {
		
		Bluead_Musical missionCont =  bluead_MusicalService.getMissionCont();
		
		model.addAttribute("bluead_mission", missionCont);
		return "BlueAD/concert/musical/missionView";
	}
   @RequestMapping("missionUpdate")
   public String missionUpdate(HttpServletRequest request, Bluead_Musical bluead_Musical) throws Exception {
	   bluead_MusicalService.missionUpdate(bluead_Musical);
	   return "redirect:missionView";
   }
   /*기획연주*/
   @RequestMapping("planView")
	public String planView( Model model) throws Exception {
		
		Bluead_Musical planCont =  bluead_MusicalService.getPlanCont();
		
		model.addAttribute("bluead_plan", planCont);
		return "BlueAD/concert/musical/planView";
	}
   @RequestMapping("planUpdate")
   public String planUpdate(HttpServletRequest request, Bluead_Musical bluead_Musical) throws Exception {
	   bluead_MusicalService.planUpdate(bluead_Musical);
	   return "redirect:planView";
   }
   /*해외연주*/
   @RequestMapping("foreignView")
	public String foreignView( Model model) throws Exception {
		
		Bluead_Musical foreignCont =  bluead_MusicalService.getForeignCont();
		
		model.addAttribute("bluead_foreign", foreignCont);
		return "BlueAD/concert/musical/foreignView";
	}
   @RequestMapping("foreignUpdate")
   public String foreignUpdate(HttpServletRequest request, Bluead_Musical bluead_Musical) throws Exception {
	   bluead_MusicalService.foreignUpdate(bluead_Musical);
	   return "redirect:foreignView";
   }
}








