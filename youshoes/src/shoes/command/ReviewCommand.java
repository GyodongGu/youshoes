package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.reviewListDAO;
import shoes.dto.reviewDTO;


public class ReviewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession httpsession = request.getSession(true);
		
		String smid=request.getParameter("sm_id");
		String pmid= (String) httpsession.getAttribute("id");
		reviewListDAO rdao= new reviewListDAO();
		List<reviewDTO> list = rdao.reviewlist(smid,pmid);
		
		request.setAttribute("list", list);
		
		
		return "/view/pMem/review.jsp";
	}

}
