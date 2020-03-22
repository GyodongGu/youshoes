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

public class pMemCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		sMemDAO smdao = new sMemDAO();
		String query = null;
		String pquery = request.getParameter("q");
		
		if(pquery != null) {
			query=pquery;
		}
		if(pquery=="") {
			query=null;
		}
		List<smDTO> list = new ArrayList<smDTO>();
		list = smdao.sMemListFive(query);
		
		request.setAttribute("smfive", list);
		
		return "/view/pMem/pMem.jsp";
	}

}
