package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.bookmarkDAO;
import shoes.dto.bookmarkDTO;
import shoes.dto.pmDTO;

public class BookmarkCheckCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bookmarkDAO bdao = new bookmarkDAO();
		bookmarkDTO bdto = new bookmarkDTO();

		int pdt_no = Integer.parseInt(request.getParameter("pdt_no"));

		HttpSession httpsession = request.getSession(true);
		pmDTO pmdto = new pmDTO();
		pmdto = (pmDTO) httpsession.getAttribute("pmDTO");
		int pmno = pmdto.getPm_no();

		bdto.setPm_no(pmno);
		bdto.setPdt_no(pdt_no);
		bookmarkDAO bbdao = new bookmarkDAO();
		boolean x = bbdao.SelectBookMark(bdto);

		if (x) {
			bdao.DeleteBookmark(bdto);
		} else {
			bdao.InsertBookmark(bdto);
		}
		return "ajax:" + x;
	}

}
