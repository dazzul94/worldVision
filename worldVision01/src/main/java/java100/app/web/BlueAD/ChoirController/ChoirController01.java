package java100.app.web.BlueAD.ChoirController;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.service.ChoirService.Choir01Service;
@Controller
@RequestMapping("/choir/choir01")
public class ChoirController01 {
	   @Autowired Choir01Service choir01Service;
	   @RequestMapping("form")
	    public String form() throws Exception {
	        return "BlueAD/choir/choir01/form";
	        
	    }
	   
	   
	    @RequestMapping("list")
	    public String list(
	            @RequestParam(value="pn", defaultValue="1") int pageNo,
	            @RequestParam(value="ps", defaultValue="10") int pageSize,
	            @RequestParam(value="words", required=false) String[] words,
	            @RequestParam(value="select", defaultValue="all") String select,
	            @RequestParam(value="oc", required=false) String orderColumn,
	            @RequestParam(value="al", required=false) String align,
	            @RequestParam(value="cate", defaultValue="1") String cate,
	            Model model) throws Exception {
	        
	        
	        
	        
	        // UI 제어와 관련된 코드는 이렇게 페이지 컨트롤러에 두어야 한다.
	        //
	        if (pageNo < 1) {
	            pageNo = 1;
	        }
	        
	        if (pageSize < 10 || pageSize > 20) {
	            pageSize = 10;
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
	        if (words != null && words[0].length() > 0) {
	            options.put("words", words);
	            model.addAttribute("words", words[0]);
	        }
	        if (cate != null) {
	            options.put("cate", cate);
	            model.addAttribute("cate", cate);
	        }
	        options.put("orderColumn", orderColumn);
	        options.put("align", align);
	        
	        int totalCount = choir01Service.getTotalCount(options);
	        int lastPageNo = totalCount / pageSize;
	        if ((totalCount % pageSize) > 0) {
	            lastPageNo++;
	        }
	        
	        // view 컴포넌트가 사용할 값을 Model에 담는다.
	        model.addAttribute("totalCount", totalCount);
			model.addAttribute("pageNo", pageNo);
			model.addAttribute("lastPageNo", lastPageNo);
			model.addAttribute("pageSize", pageSize);
	        
	        model.addAttribute("list", choir01Service.list(pageNo, pageSize, options));
	        
	        return "BlueAD/choir/choir01/list";
	    }
	    
}
