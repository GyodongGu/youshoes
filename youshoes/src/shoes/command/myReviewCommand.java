package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.reviewListDAO;
import shoes.dto.reviewDTO;

public class myReviewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reviewListDAO rdao= new reviewListDAO();

		List<reviewDTO> userReviews = rdao.myReview("pur01");
		request.setAttribute("userReviews", userReviews);
		
		return "/view/pMem/myReview.jsp";
	}
}
