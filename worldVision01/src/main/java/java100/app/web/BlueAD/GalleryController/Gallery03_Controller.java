package java100.app.web.BlueAD.GalleryController;

import java.util.HashMap;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.service.GalleryService.Gallery03Service;

@Controller
@RequestMapping("/gallery/gallery03")
public class Gallery03_Controller {
    
    @Autowired Gallery03Service gallery03Service;
    
    static Logger logger = Logger.getLogger(Gallery03_Controller.class);
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="10") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            Model model) throws Exception {
        
        if (pageNo < 1) {
            pageNo = 1;
        }
        
        if (pageSize < 10 || pageSize > 30) {
            pageSize = 10;
        }
        
        System.out.printf("pageNo=%d, pageSize=%d\n", pageNo, pageSize);
        
        HashMap<String,Object> options = new HashMap<>();
        if (words != null && words[0].length() > 0) {
            options.put("words", words);
        }
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = gallery03Service.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        
        model.addAttribute("list", gallery03Service.list(pageNo, pageSize, options));
        
        return "BlueAD/gallery/gallery03/list";
    }
}








