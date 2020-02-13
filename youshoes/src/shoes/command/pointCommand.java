package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;

public class pointCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDAO pdao = new pmDAO();
		
		int ppoint = pdao.selectPoint(1);
		request.setAttribute("point", ppoint);
		
		return "/view/pMem/point.jsp";
	}
}
