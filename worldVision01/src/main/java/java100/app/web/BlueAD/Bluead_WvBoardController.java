package java100.app.web.BlueAD;

import java.util.HashMap;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.service.Bluead_WvBoardService;

@Controller
@RequestMapping("/bluead_wvboard")
public class Bluead_WvBoardController {
    
    @Autowired Bluead_WvBoardService bluead_wvboardService;
    
    static Logger logger = Logger.getLogger(Bluead_WvBoardController.class);
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="10") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
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
        
        if (pageSize < 10 || pageSize > 30) {
            pageSize = 10;
        }
        
        // 코드의 실행 상태를 확인하기 위해
        // 코드 중간에 변수의 값을 출력할 때가 있다.
        // 보통 다음과 같이 출력문을 작성한다.
        System.out.printf("pageNo=%d, pageSize=%d\n", pageNo, pageSize);
        
        HashMap<String,Object> options = new HashMap<>();
        if (words != null && words[0].length() > 0) {
            options.put("words", words);
        }
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = bluead_wvboardService.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        
        model.addAttribute("list", bluead_wvboardService.list(pageNo, pageSize, options));
        
        return "BlueAD/bluead_wvboard/list";
    }
    
    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("bluead_wvboard", bluead_wvboardService.get(no));
        return "BlueAD/bluead_wvboard/view";
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
        return "BlueAD/bluead_wvboard/form";
        
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








