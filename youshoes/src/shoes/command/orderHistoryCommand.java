package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ordDAO;
import shoes.dto.ordDTO;
import shoes.dto.pmDTO;

public class orderHistoryCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ordDAO ohdao = new ordDAO();
		
		int pmNO = ((pmDTO)request.getSession().getAttribute("pmDTO")).getPm_no();

		List<ordDTO> ordHistory = ohdao.selectOrderList(pmNO);
		request.setAttribute("ordHistory", ordHistory);
		
		return "/view/pMem/orderHistory.jsp";
	}

}
