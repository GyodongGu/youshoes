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

public class insertReviewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reviewListDAO rwDAO = new reviewListDAO();
		int pmNO = ((pmDTO)request.getSession().getAttribute("pmDTO")).getPm_no();
		
		List<reviewDTO> rwDTO = rwDAO.myReviewCreate(pmNO);
		request.setAttribute("rwDTO", rwDTO);
		
		return "/view/pMem/insertReview.jsp";
	}

}
