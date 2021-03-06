package java100.app.web.BlueAD.BoardController;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Board.Bluead_WvBoard;
import java100.app.service.BoardService.Bluead_WvBoardService;

@Controller
@RequestMapping("/bluead_wvboard/board01")
public class Bluead_WvBoardController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	Bluead_WvBoardService bluead_wvboardService;

	static Logger logger = Logger.getLogger(Bluead_WvBoardController.class);

	@RequestMapping("list")
	public String list(@RequestParam(value = "pn", defaultValue = "1") int pageNo,
			@RequestParam(value = "ps", defaultValue = "10") int pageSize,
			@RequestParam(value = "select", defaultValue = "all") String select, // 추가
			@RequestParam(value = "words", required = false) String[] words,
			@RequestParam(value = "oc", required = false) String orderColumn,
			@RequestParam(value = "al", required = false) String align, Model model) throws Exception {

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

		HashMap<String, Object> options = new HashMap<>();
		if (select != null) { // 추가
			options.put("select", select);
			model.addAttribute("select", select); //
		}
		if (words != null && words[0].length() > 0) {
			System.out.println(words[0]);
			options.put("words", words);
			model.addAttribute("words", words[0]); // 추가 페이지 넘겨도 검색 조건
		}
		options.put("orderColumn", orderColumn);
		options.put("align", align);

		int totalCount = bluead_wvboardService.getTotalCount(options);// 파라미터에
																		// 추가
		int lastPageNo = totalCount / pageSize;
		if ((totalCount % pageSize) > 0) {
			lastPageNo++;
		}

		// view 컴포넌트가 사용할 값을 Model에 담는다. ->JSP에서 사용할 수 있게 객체나 STRING값을 담아준다
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("lastPageNo", lastPageNo);

		model.addAttribute("totalCount", totalCount);//
		model.addAttribute("pageSize", pageSize);//
		model.addAttribute("list", bluead_wvboardService.list(pageNo, pageSize, options));

		return "BlueAD/bluead_wvboard/board01/list";
	}

	@RequestMapping("{no}")
	public String view(@PathVariable int no, Model model) throws Exception {

		model.addAttribute("bluead_wvboard", bluead_wvboardService.get(no));
		return "BlueAD/bluead_wvboard/board01/view"; /// WEB-INF/jsp/BlueAD/bluead_wvboard/board01/view.jsp
														/// //viewResolver의
														/// 역할(VIEW를 주는것=JSP 경로를
														/// 주는것)
	}

	@RequestMapping("form")
	public String form() throws Exception {
		return "BlueAD/bluead_wvboard/board01/form";

	}

	@RequestMapping("delete")
	public String delete(int no) throws Exception {

		bluead_wvboardService.delete(no);
		return "redirect:list";
	}

	@RequestMapping("deleteAll")
	public String deleteAll(HttpServletRequest request, String no) throws Exception {

		String[] splitNo = no.split(",");
		int[] realNo = new int[splitNo.length];
		;
		for (int i = 0; i < splitNo.length; i++) {
			realNo[i] = Integer.parseInt(splitNo[i]);
			System.out.println(realNo[i]);
		}
		HashMap<String, Object> numbers = new HashMap<>();
		if (realNo != null) {
			numbers.put("numbers", realNo);
		}
		bluead_wvboardService.deleteAll(numbers);
		/*
		 * System.out.println((String)request.getHeader("Referer")); String
		 * decodeResult =
		 * URLDecoder.decode((String)request.getHeader("Referer"), "UTF-8");
		 * System.out.println(decodeResult);
		 */
		return "redirect:" + (String) request.getHeader("Referer");
	}

	@RequestMapping("add")
	public String add(Bluead_WvBoard bluead_wvboard) throws Exception {

		bluead_wvboardService.add(bluead_wvboard);
		return "redirect:list";
	}

	@RequestMapping("view")
	public String fileDonwLoadSample(ModelMap model, MultipartFile file) throws Exception {
		String uploadDir = servletContext.getRealPath("/download");
		String filename = writeUploadFile(file, uploadDir);
		// 파일 이름을 넘겨받아서
		// 저장된 경로(고정)를 정보를 받아서
		model.put("fileName", filename);
		model.put("filePath", uploadDir);
		return "DownloadView";
	}

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
