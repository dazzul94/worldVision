package java100.app.web.BlueAD.ConcertController;

import java.util.HashMap;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.service.ConcertService.RepertoryService;
//bluead_wv_concert01
@Controller
@RequestMapping("/concert/repertory")
public class RepertoryController {
	
	@Autowired RepertoryService repertoryService;
	
    static Logger logger = Logger.getLogger(RepertoryController.class);
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="20") int pageSize,
            @RequestParam(value = "select", defaultValue="all") String select,
        	@RequestParam(value = "bbs_category", defaultValue = "") String bbs_category,
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
        if (bbs_category != null) {
			options.put("bbs_category",bbs_category);
			model.addAttribute("bbs_category", bbs_category);
		}
        if (words != null && words[0].length() > 0) {
			System.out.println(words[0]);
			options.put("words", words);
			model.addAttribute("words", words[0]);// 페이지 넘겨도 검색조건 가져오기
		}
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = repertoryService.getTotalCount(options);
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("list", repertoryService.list(pageNo, pageSize, options));
        return "BlueAD/concert/repertory/list";
    }
    @RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("repertory", repertoryService.get(no));
		return "BlueAD/concert/repertory/view"; /// WEB-INF/jsp/BlueAD/bluead_wvboard/board01/view.jsp
														/// //viewResolver의
														/// 역할(VIEW를 주는것=JSP 경로를
														/// 주는것)
	}
}








