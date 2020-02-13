package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ordDAO;
import shoes.dto.ordDTO;

public class orderHistoryCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ordDAO ohdao = new ordDAO();
		
		List<ordDTO> orderHistory = ohdao.selectOrderList(4);
		request.setAttribute("orderHistory", orderHistory);
		
		return "/view/pMem/orderHistory.jsp";
	}

}
