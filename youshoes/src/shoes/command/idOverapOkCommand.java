package shoes.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;

public class idOverapOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDAO dao = new pmDAO();

		boolean b = true;
		String id = request.getParameter("id");

		b = dao.idOverlapCheck(id);

		// request가 유지되는 동안에 세션에 데이터를 저장
		request.setAttribute("b", b);
		request.setAttribute("id", id);

		String path = "view/idCheck.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return null;
	}

}
