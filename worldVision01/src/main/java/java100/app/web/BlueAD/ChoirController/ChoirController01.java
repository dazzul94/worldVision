package java100.app.web.BlueAD.ChoirController;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Choir.Choir01;
import java100.app.service.ChoirService.Choir01Service;
@Controller
@RequestMapping("/choir/choir01")
public class ChoirController01 {
	@Autowired
	ServletContext servletContext;
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
	@RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("choir01", choir01Service.get(no));
		return "BlueAD/choir/choir01/view";
	}
	@RequestMapping("choirUpdate")
	public String choirUpdate(HttpServletRequest request, Choir01 choir01, MultipartFile file, BindingResult bindingResult) throws Exception {
		// 업로드 파일을 저장할 폴더 위치를 가져온다.
		if (bindingResult.hasErrors()) {
			// 파라미터 값을 변수의 타입으로 변환하는데 오류가 있을 때,
			// 여기에 작업 코드를 작성하라!
			System.out.println("파라미터 값을 변환하는 중에 오류 발생!");
		}
		/*
		System.out.println("이전 사진 이름: " + member.getOriginalFilename());
        System.out.println("바뀐 사진 이름: " + file.getOriginalFilename());
        if (file.getOriginalFilename().equals("")) {
            System.out.println("사진 등록 X");
            member.setPhoto(member.getOriginalFilename());
        } else {
            System.out.println("사진 등록 O");
            String uploadDir = servletContext.getRealPath("/download");
            String filename = writeUploadFile(file, uploadDir);
            member.setPhoto(filename);
        }
        */
		System.out.println("이전 사진 이름: " + choir01.getOriginalFilename());
        System.out.println("바뀐 사진 이름: " + file.getOriginalFilename());
        if (file.getOriginalFilename().equals("")) {
            System.out.println("사진 등록 X");
            choir01.setImg1_micro(choir01.getOriginalFilename());
        } else {
		String uploadDir = servletContext.getRealPath("/images/BlueAD/admin/choir/upload");
		String filename = writeUploadFile(file, uploadDir);
		choir01.setImg1_micro(filename);
	}
        choir01Service.choirUpdate(choir01);
		
		return "redirect:list";
	}
	
	
	
	
	
	// 밑에는 파일 업로드 method
	long prevMillis = 0;
	int count = 0;

	// 다른 클라이언트가 보낸 파일명과 중복되지 않도록
	// 서버에 파일을 저장할 때는 새 파일명을 만든다.
	synchronized private String getNewFilename(String filename) {
		long currMillis = System.currentTimeMillis();
		if (prevMillis != currMillis) {
			count = 0;
			prevMillis = currMillis;
		}

		return currMillis + "_" + count++ + extractFileExtName(filename);
	}

	// 파일명에서 뒤의 확장자명을 추출한다.
	private String extractFileExtName(String filename) {
		int dotPosition = filename.lastIndexOf(".");

		if (dotPosition == -1)
			return "";

		return filename.substring(dotPosition);
	}

	private String writeUploadFile(MultipartFile part, String path) throws IOException {

		String filename = getNewFilename(part.getOriginalFilename());
		part.transferTo(new File(path + "/" + filename));
		return filename;
	}
}
