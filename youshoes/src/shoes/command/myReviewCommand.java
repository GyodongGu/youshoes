package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ProductOrderDAO;
import shoes.dao.reviewListDAO;
import shoes.dto.deliveryDTO;
import shoes.dto.ordDTO;
import shoes.dto.ordDetailDTO;
import shoes.dto.pmDTO;
import shoes.dto.reviewDTO;

public class myReviewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		pmDTO dto = new pmDTO();
		ProductOrderDAO dao = new ProductOrderDAO();
		dto = dao.select(id);
		
		int ordno = dto.getPm_no();
		List<deliveryDTO> deli = dao.select2(ordno);
		request.setAttribute("list", deli);
		
		return "/view/pMem/myReview.jsp";
	}
}
