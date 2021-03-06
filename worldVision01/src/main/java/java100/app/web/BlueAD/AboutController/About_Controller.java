package java100.app.web.BlueAD.AboutController;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.About.About;
import java100.app.service.AboutService.AboutService;

@Controller
@RequestMapping("/about")
public class About_Controller {
    
    @Autowired AboutService aboutService;
    
    static Logger logger = Logger.getLogger(About_Controller.class);
    
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
        
        int totalCount = aboutService.getTotalCount(options);
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("lastPageNo", lastPageNo);
		model.addAttribute("pageSize", pageSize);
        
        model.addAttribute("list", aboutService.list(pageNo, pageSize, options));
        
        return "BlueAD/about/list";
    }
    
    @RequestMapping("abroadList")
    public String list2(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="10") int pageSize,
            @RequestParam(value = "select", defaultValue = "all") String select,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            @RequestParam(value="cate", defaultValue="2") String cate,
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
        
        int totalCount = aboutService.getTotalCount(options);
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("lastPageNo", lastPageNo);
		model.addAttribute("pageSize", pageSize);
        
        model.addAttribute("list", aboutService.list2(pageNo, pageSize, options));
        
        return "BlueAD/about/abroadList";
    }
    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("about", aboutService.get(no));
        return "BlueAD/about/view";
    }
    @RequestMapping("add")
    public String add(About about) throws Exception {
        
        aboutService.add(about);
        if (about.getCate() == 1) {
        return "redirect:list";
        } else {
            return "redirect:abroadList";
        }
    }
       
    @RequestMapping("form")
    public String form() throws Exception {
        return "BlueAD/about/form";
        
    }
    @RequestMapping("abroadForm")
    public String abroadForm() throws Exception {
        return "BlueAD/about/abroadForm";
        
    }
    
    @RequestMapping("update")
    public String update(HttpServletRequest request, About about) throws Exception {
        
        aboutService.update(about);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int no) throws Exception {

        aboutService.delete(no);
        return "redirect:list";
    }
    @RequestMapping("deleteAll")
    public String deleteAll(HttpServletRequest request, String no) throws Exception {
        
        String[] splitNo = no.split(",");
        int[] realNo = new int[splitNo.length];;
        for (int i = 0; i < splitNo.length; i++) {
            realNo[i] = Integer.parseInt(splitNo[i]);
            System.out.println(realNo[i]);
        }
        HashMap<String,Object> numbers = new HashMap<>();
        if (realNo != null) {
            numbers.put("numbers", realNo);
        }
        aboutService.deleteAll(numbers);
       /* System.out.println((String)request.getHeader("Referer"));
        String decodeResult = URLDecoder.decode((String)request.getHeader("Referer"), "UTF-8");
        System.out.println(decodeResult);*/
        return "redirect:" +  (String)request.getHeader("Referer");
    }
}








