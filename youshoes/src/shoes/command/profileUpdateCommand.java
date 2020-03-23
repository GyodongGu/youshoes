package shoes.command;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shoes.common.Command;
import shoes.dao.ImageDAO;
import shoes.dao.pmDAO;
import shoes.dto.imageDetailDTO;
import shoes.dto.pmDTO;

public class profileUpdateCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String directory = "C:/Users/user/git/youshoes/youshoes/WebContent/view/img/";
		int maxsize = 1024 * 1024 * 100;
		String encoding = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, directory, maxsize, encoding, new DefaultFileRenamePolicy());
		
		pmDTO pudto = new pmDTO();
		pmDAO pudao = new pmDAO();
		
		//session
		HttpSession httpsession = request.getSession(true);
		String pmid= (String) httpsession.getAttribute("id");
		
		Enumeration fileNames = multi.getFileNames();
		while (fileNames.hasMoreElements()) {
			String parameter = (String) fileNames.nextElement();
			String fileName = multi.getOriginalFileName(parameter);
			String fileRealName = multi.getFilesystemName(parameter);
			
			if (fileName == null)
				continue;

			if (!fileName.endsWith(".jpg") && !fileName.endsWith(".png")) {
				File file = new File(directory + fileRealName);
				file.delete();
			} else {
				
				ImageDAO idao = new ImageDAO();
				imageDetailDTO iddto = new imageDetailDTO();
				
				String img = idao.selectProfileImage(pmid);
				System.out.println(img);
				if(img== null) {
					iddto.setImg_name(fileRealName);
					iddto.setImg_size(10);
					idao.insertProfileImage(pmid, iddto);
				}else {
					iddto.setImg_name(fileRealName);
					iddto.setImg_size(10);
					idao.updateProfileImage(pmid, iddto);
				}
				
			}
		}
		
		
		//회원정보 업데이트
		pudto.setPm_name(multi.getParameter("pm_name"));
		pudto.setPm_email(multi.getParameter("pm_email"));
		pudto.setPm_tell(multi.getParameter("pm_tell"));
		pudto.setPm_post(multi.getParameter("pm_post"));
		pudto.setPm_addr1(multi.getParameter("pm_addr1"));
		pudto.setPm_addr2(multi.getParameter("pm_addr2"));
		pudto.setPm_addr3(multi.getParameter("pm_addr3"));
		int pmUpdate = pudao.pmUpdate(pudto, pmid);

		//request.setAttribute("pmUpdate", pmUpdate);
		pmDAO dao = new pmDAO();
		pmDTO dto = dao.selectOne(pmid);
		httpsession.setAttribute("pmDTO", dto);
		
		return "/profile.do";
	}

}
