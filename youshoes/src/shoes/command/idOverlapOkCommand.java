package shoes.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class idOverlapOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		pmDAO dao = new pmDAO();
		
		String id = request.getParameter("pm_id");
		boolean b = dao.idOverlapCheck(id);
		
		// request가 유지되는 동안에 세션에 데이터를 저장
		request.setAttribute("idCheck", b);
		request.setAttribute("pm_id", id);

		return "view/idOverlapOk.jsp";
	}

}
