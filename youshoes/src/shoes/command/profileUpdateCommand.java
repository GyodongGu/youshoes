package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class profileUpdateCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDTO pudto = new pmDTO();
		pmDAO pudao = new pmDAO();
		pudto.setPm_name(request.getParameter("upId"));
		pudto.setPm_email(request.getParameter("upEmail"));
		pudto.setPm_tell(request.getParameter("upTell"));
		
		
		int pmUpdate = pudao.pmUpdate(pudto, "pur01");
		request.setAttribute("pmUpdate", pmUpdate);
		
		return "view/pMem/profileUpdate.jsp";
	}

}
