package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
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
		
		
		int pmNO = ((pmDTO)request.getSession().getAttribute("pmDTO")).getPm_no();
		ordDAO ohdao = new ordDAO();
		List<ordDTO> ordHistory = ohdao.selectOrderList(pmNO);
		
		String page = request.getParameter("p");
		int pageNum = 1;
		if(page !=null) {
			pageNum = Integer.parseInt(page);
		}
		ordDAO oohdao = new ordDAO();
		int count = oohdao.ordListCount(pmNO);
		
		ordDAO ooohdao = new ordDAO();
		List<ordDTO> list = new ArrayList<ordDTO>();
		list = ooohdao.OrdListPager(pmNO, pageNum);
		
		
		//request.setAttribute("ordHistory", ordHistory);
		request.setAttribute("olist", list);
		request.setAttribute("count", count);
		
		return "/view/pMem/orderHistory.jsp";
	}

}
