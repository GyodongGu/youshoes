package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class profileUpdateFormCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession httpsession = request.getSession(true);
		String pmid= (String) httpsession.getAttribute("id");
		
		
		
		pmDAO pdao = new pmDAO();
		pmDTO pdto = new pmDTO();
		pdto = pdao.selectOne(pmid);
		
		request.setAttribute("pdto", pdto);
		
		
		return "view/pMem/profileUpdate.jsp";
	}

}
