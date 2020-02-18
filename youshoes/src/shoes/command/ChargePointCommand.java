package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class ChargePointCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDAO chpDao = new pmDAO();
		
		int pmNo = ((pmDTO)request.getSession().getAttribute("pmDTO")).getPm_no();
		int selValue = Integer.parseInt(request.getParameter("charge_point"));
		
		int chp = chpDao.pointUpdate(pmNo, selValue);
		
		return "ajax:"+chp;
	}

}
