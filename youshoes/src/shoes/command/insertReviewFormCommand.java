package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.reviewListDAO;
import shoes.dto.pmDTO;
import shoes.dto.reviewDTO;

public class insertReviewFormCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int pdtno = Integer.parseInt(request.getParameter("pdt_no"));
		
		HttpSession httpsession = request.getSession(true);
		String pmid = (String)httpsession.getAttribute("id");
		pmDTO pmdto = (pmDTO)httpsession.getAttribute("pmDTO");
		
		String ordno = request.getParameter("ord_no");
		int ord_no=0;
		ord_no = Integer.parseInt(ordno);
		
		request.setAttribute("pdtno", pdtno);
		request.setAttribute("pmid", pmid);
		request.setAttribute("pmdto", pmdto);
		request.setAttribute("ordno", ord_no);
		
		return "/view/pMem/insertReview.jsp";
	}

}
