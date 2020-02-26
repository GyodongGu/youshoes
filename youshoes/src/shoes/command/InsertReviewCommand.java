package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shoes.common.Command;
import shoes.dao.InsertReviewImgDAO;
import shoes.dao.reviewListDAO;
import shoes.dto.reviewDTO;

public class InsertReviewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/view/img");
		System.out.println(uploadPath);
		MultipartRequest multi = new MultipartRequest(
				request,
				uploadPath,
				10 * 1024 * 1024,
				"utf-8",
				new DefaultFileRenamePolicy()
				);
		
		/*
		 * long fullsize = multi.getFile(fileName).getTotalSpace(); long usablesize =
		 * multi.getFile(fileName).getUsableSpace(); int usesize = (int)
		 * (fullsize-usablesize);
		 */
		
		
		String fileName = multi.getFilesystemName("fileupload");
		
		reviewListDAO rdao = new reviewListDAO();
		reviewDTO rdto = new reviewDTO();
		
		String rwcontent = multi.getParameter("rw_content");
		int pdtno = Integer.parseInt(multi.getParameter("pdtno"));
		HttpSession httpsession = request.getSession(true);
		String pmid = (String)httpsession.getAttribute("id");
		
		int rwstars = Integer.parseInt(multi.getParameter("rw_stars"));
		
		rdto.setRw_content(rwcontent);
		rdto.setPdt_no(pdtno);
		rdto.setPm_id(pmid);
		rdto.setRw_stars(rwstars);
		
		rdao.insertReview(rdto);
		
		InsertReviewImgDAO idao = new InsertReviewImgDAO();
		idao.insertReviewImg(fileName, 10);
		
		
		return "/pMem.do";
	}

}
