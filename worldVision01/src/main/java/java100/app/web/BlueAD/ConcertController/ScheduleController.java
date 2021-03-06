package java100.app.web.BlueAD.ConcertController;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Concert.Bluead_Schedule;
import java100.app.service.ConcertService.Bluead_ScheduleService;

@Controller
@RequestMapping("/concert/schedule")
public class ScheduleController {
	
	@Autowired
	Bluead_ScheduleService bluead_ScheduleService;
	
    static Logger logger = Logger.getLogger(ScheduleController.class);
    
    /*@RequestMapping("scheduleJson")
    public Object scheduleJson(Model model) throws Exception {

//    	HashMap<String, Object> options = new HashMap<>();

		model.addAttribute("list", bluead_ScheduleService.list());
		
	    JSONObject jsonObject = new JSONObject();
	    
        //person의 JSON정보를 담을 Array 선언
        JSONArray personArray = new JSONArray();
 
        //person의 한명 정보가 들어갈 JSONObject 선언
        JSONObject personInfo = new JSONObject();
 
        //정보 입력
        personInfo.put("name", "송강호");
        personInfo.put("age", "25");
        personInfo.put("gender", "남자");
        personInfo.put("nickname", "남궁민수");
        //Array에 입력
        personArray.add(personInfo);
 
        personInfo = new JSONObject();
        personInfo.put("name", "전지현");
        personInfo.put("age", "21");
        personInfo.put("gender", "여자");
        personInfo.put("nickname", "예니콜");
        personArray.add(personInfo);
 
        //전체의 JSONObject에 사람이란 name으로 JSON의 정보로 구성된 Array의 value를 입력
        jsonObject.put("persons", personArray);
 
         
        JSONArray bookArray = new JSONArray();
 
        JSONObject bookInfo = new JSONObject();
 
        bookInfo.put("name", "사람은 무엇으로 사는가?");
        bookInfo.put("writer", "톨스토이");
        bookInfo.put("price", "100");
        bookInfo.put("genre", "소설");
        bookInfo.put("publisher", "톨스토이 출판사");
        bookArray.add(bookInfo);
 
        bookInfo = new JSONObject();
        bookInfo.put("name", "홍길동전");
        bookInfo.put("writer", "허균");
        bookInfo.put("price", "300");
        bookInfo.put("genre", "소설");
        bookInfo.put("publisher", "허균 출판사");
        bookArray.add(bookInfo);
 
        bookInfo = new JSONObject();
        bookInfo.put("name", "레미제라블");
        bookInfo.put("writer", "빅토르 위고");
        bookInfo.put("price", "900");
        bookInfo.put("genre", "소설");
        bookInfo.put("publisher", "빅토르 위고 출판사");
        bookArray.add(bookInfo);
 
        jsonObject.put("books", bookArray);
 
        //JSONObject를 String 객체에 할당
        String jsonInfo = jsonObject.toJSONString();
 
        System.out.print(jsonInfo);
 
		//리턴할땐 modelandView로 리턴
		return new ModelAndView("jsonView", "jsonObject", bookArray);
    }*/
    
    @RequestMapping("calendar")
    public String schedule(Model model) throws Exception {
    	model.addAttribute("list", bluead_ScheduleService.list());
    	return "BlueAD/concert/schedule/calendar";
    }
    @RequestMapping("scheduleView")
	public String scheduleView(@RequestParam int no, Model model) throws Exception {
		
		Bluead_Schedule bluead_schedule = bluead_ScheduleService.getSchedule(no);
		
		model.addAttribute("bluead_schedule", bluead_schedule);
		return "BlueAD/concert/schedule/scheduleView";
	}
    @RequestMapping("update")
	public String update(HttpServletRequest request, Bluead_Schedule bluead_schedule) throws Exception {
    	bluead_ScheduleService.update(bluead_schedule);
		return "redirect:calendar";
	}
    @RequestMapping("delete")
    public String delete(int no) throws Exception {

    	bluead_ScheduleService.delete(no);
        return "redirect:calendar";
    }
    @RequestMapping("form")
    //data=2018/05/11
	public String form(@RequestParam String data, Model model) throws Exception {
    	logger.debug(data);
    	String[] splitedData = data.split("/");
    	logger.debug(splitedData[0]); //y
    	logger.debug(splitedData[1]); //m
    	logger.debug(splitedData[2]); //d
    	
    	model.addAttribute("dataY", splitedData[0]);
    	model.addAttribute("dataM", splitedData[1]);
    	model.addAttribute("dataD", splitedData[2]);
		return "BlueAD/concert/schedule/form";

	}
    @RequestMapping("add")
    public String add(Bluead_Schedule bluead_Schedule) throws Exception {
        
    	bluead_ScheduleService.add(bluead_Schedule);
    	return "redirect:calendar";
    }
}








