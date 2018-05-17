package java100.app.web.BlueAD.ChoirController;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Choir.Choir_Teacher;
import java100.app.service.ChoirService.ChoirTeacherService;
@Controller
@RequestMapping("/choir/choirTeacher")
public class ChoirTeacherController {
	@Autowired
	ServletContext servletContext;
	@Autowired ChoirTeacherService choirTeacherService;

	static Logger logger = Logger.getLogger(ChoirTeacherController.class);

	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/choir/choirTeacher/form";

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

		int totalCount = choirTeacherService.getTotalCount(options);
		int lastPageNo = totalCount / pageSize;
		if ((totalCount % pageSize) > 0) {
			lastPageNo++;
		}

		// view 컴포넌트가 사용할 값을 Model에 담는다.
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("lastPageNo", lastPageNo);
		model.addAttribute("pageSize", pageSize);

		model.addAttribute("list", choirTeacherService.list(pageNo, pageSize, options));

		return "BlueAD/choir/choirTeacher/list";
	}
	@RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("choirTeacher", choirTeacherService.get(no));
		return "BlueAD/choir/choirTeacher/view";
	}
	@RequestMapping("choirUpdate")
	public String choirUpdate(@RequestParam(value="img_del", defaultValue="N") String img_del,HttpServletRequest request, Choir_Teacher choirTeacher, MultipartFile file, BindingResult bindingResult) throws Exception {
		// 업로드 파일을 저장할 폴더 위치를 가져온다.
		if (bindingResult.hasErrors()) {
			// 파라미터 값을 변수의 타입으로 변환하는데 오류가 있을 때,
			// 여기에 작업 코드를 작성하라!
			System.out.println("파라미터 값을 변환하는 중에 오류 발생!");
		}
		logger.debug("이전 사진 이름: " + choirTeacher.getOriginalFilename());
		logger.debug("바뀐 사진 이름: " + file.getOriginalFilename());
		logger.debug("img_del =" + img_del);

		if (img_del.equals("Y")) {
			logger.debug("img 삭제 체크당함");
			choirTeacher.setImg1_thumbo(" ");
		}
		else {
			if (file.getOriginalFilename().equals("")) {
				System.out.println("사진 등록 X");
				choirTeacher.setImg1_thumbo(choirTeacher.getOriginalFilename());
			} else {
				String uploadDir = servletContext.getRealPath("/images/BlueAD/admin/choirTeacher/upload");
				String filename = writeUploadFile(file, uploadDir);
				choirTeacher.setImg1_thumbo(filename);
			}
		}
		choirTeacherService.choirUpdate(choirTeacher);

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
