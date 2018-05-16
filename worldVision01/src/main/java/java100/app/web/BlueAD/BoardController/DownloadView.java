package java100.app.web.BlueAD.BoardController;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.AbstractView;

@Component("DownloadView")
public class DownloadView extends AbstractView {

	private FileInputStream fin = null;
	private BufferedInputStream bis = null;
	private ServletOutputStream sout = null;
	private BufferedOutputStream bos = null;

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 다운로드 받을 때 저장할 파일명
		String fileName = (String) model.get("fileName");
		// 다운로드 받을 파일경로
		String filePath = (String) model.get("filePath");

		response.setContentType("application/octet-stream;");
		File file = new File(filePath);
		try {
			if (file.exists()) {
				response.setHeader("Content-Disposition",
						"attachment; filename=" + new String(fileName.getBytes("UTF-8"), "ISO8859_1") + ";");

				byte buff[] = new byte[2048];
				int bytesRead;

				fin = new FileInputStream(file);
				bis = new BufferedInputStream(fin);
				sout = response.getOutputStream();
				bos = new BufferedOutputStream(sout);

				while ((bytesRead = bis.read(buff)) != -1) {
					bos.write(buff, 0, bytesRead);
				}

				bos.flush();

				fin.close();
				sout.close();
				bis.close();
				bos.close();
			} else {
				// 자체 예외발생
				throw new Exception("해당 파일이 존재하지 않습니다.");
			}
		} catch (Exception e) {
			// 자체 예외발생
			throw new Exception("파일 다운로드중에 오류가 발생하였습니다.");
		} finally {
			if (fin != null) {
				fin.close();
			}
			if (sout != null) {
				sout.close();
			}
			if (bis != null) {
				bis.close();
			}
			if (bos != null) {
				bos.close();
			}
		}
	}

	/*
	 * public DownloadView() {
	 * 
	 * setContentType("applicaiton/download;charset=utf-8");
	 * 
	 * }
	 * 
	 * @Override
	 * 
	 * protected void renderMergedOutputModel(Map<String, Object> model,
	 * 
	 * HttpServletRequest request, HttpServletResponse response) throws
	 * Exception {
	 * 
	 * File file = (File) model.get("downloadFile");
	 * 
	 * System.out.println("asdfasdf");
	 * 
	 * response.setContentType(getContentType());
	 * 
	 * response.setContentLength((int) file.length());
	 * 
	 * String fileName = java.net.URLEncoder.encode(file.getName(), "UTF-8");
	 * 
	 * response.setHeader("Content-Disposition", "attachment;filename=\"" +
	 * fileName + "\";");
	 * 
	 * response.setHeader("Content-Transfer-Encoding", "binary");
	 * 
	 * OutputStream out = response.getOutputStream();
	 * 
	 * FileInputStream fis = null;
	 * 
	 * try {
	 * 
	 * fis = new FileInputStream(file);
	 * 
	 * FileCopyUtils.copy(fis, out);
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace();
	 * 
	 * } finally {
	 * 
	 * if (fis != null) { try { fis.close(); } catch (Exception e2) { } }
	 * 
	 * }
	 * 
	 * out.flush();
	 * 
	 * }
	 */

	/*
	 * @RequestMapping("view") public ModelAndView download()throws Exception{
	 * File down = new File("D:\\study\\app\\save\\test.txt"); ModelAndView mv =
	 * new ModelAndView(); mv.setViewName("jsp의 경로"); mv.addObject("totalCount",
	 * totalCount); return mv; return new
	 * ModelAndView("download","downloadFile",down); //download의 이름으로 down 을 준다
	 * -> model 의역할 }
	 */

}
