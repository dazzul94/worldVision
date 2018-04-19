package java100.app.web.BlueAD.RequestController;

import java.util.HashMap;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.service.RequestService.Bluead_Online1Service;

@Controller
@RequestMapping("/request/bluead_online1")
public class Bluead_Online1Controller {
    
    @Autowired Bluead_Online1Service bluead_onlineService;
    
    static Logger logger = Logger.getLogger(Bluead_Online1Controller.class);
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="20") int pageSize,
            @RequestParam(value = "select", defaultValue="all") String select,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            @RequestParam(value="type", defaultValue="1") String type,
            Model model) throws Exception {
        
        
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
        
        HashMap<String,Object> options = new HashMap<>();
        if (select != null) {
            options.put("select", select);
            model.addAttribute("select", select);
        }
        if (type != null) {
            options.put("type", type);
            model.addAttribute("type", type);
        }
        if (words != null && words[0].length() > 0) {
            options.put("words", words);
            model.addAttribute("words", words[0]);
        }
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = bluead_onlineService.getTotalCount(options);
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        model.addAttribute("pageSize", pageSize);
        
        model.addAttribute("list", bluead_onlineService.list(pageNo, pageSize, options));
        
        return "BlueAD/request/bluead_online1/list";
    }
    
    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("bluead_online", bluead_onlineService.get(no));
        return "BlueAD/request/bluead_online1/view";
    }
/*    
    @RequestMapping("add")
    public String add(Member member) throws Exception {
        
    	bluead_memberService.add(member);
        return "redirect:list";
    }
    */
    @RequestMapping("form")
    public String form() throws Exception {
        return "BlueAD/request/bluead_online1/form";
        
    }
   /* 
    @RequestMapping("update")
    public String update(Member member) throws Exception {
        
    	bluead_memberService.update(member);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int no) throws Exception {

    	bluead_memberService.delete(no);
        return "redirect:list";
    }*/
}








