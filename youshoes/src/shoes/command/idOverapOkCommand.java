package shoes.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ysw.dao.memberDAO;
import shoes.common.Command;

public class idOverapOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pMemDAO dao = new pMemDAO();

		boolean b = true;
		String id = request.getParameter("id");

		b = dao.isIdCheck(id);

		// request가 유지되는 동안에 세션에 데이터를 저장
		request.setAttribute("b", b);
		request.setAttribute("id", id);

		String path = "view/idCheck.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return null;
	}

}
