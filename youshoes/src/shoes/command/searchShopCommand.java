package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.sMemDAO;
import shoes.dto.smDTO;

public class searchShopCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sMemDAO smdao = new sMemDAO();
		List<smDTO> list = new ArrayList<smDTO>();
		String query = null;
		String pquery = request.getParameter("q");
		
		if(pquery != null) {
			query=pquery;
		}
		if(pquery=="") {
			query=null;
		}
		
		list = smdao.sMemList(query);
		
		request.setAttribute("smfive", list);
		
		return "/view/pMem/searchShop.jsp";
	}

}
