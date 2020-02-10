package shoes.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;

public class logoutCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션을 가져온다. (가져올 세션이 없다면 생성한다)
		HttpSession httpsession = request.getSession();

		// "id"로 바인딩된 객체를 돌려눈다, ("id"로 바인딩된 객체가 없다면 null)
		String id = (String) httpsession.getAttribute("id");
		httpsession.removeAttribute("id");
		httpsession.removeAttribute("grant");

		// request가 유지되는 동안 request에 데이터를 저장
		request.setAttribute("id", id);

		// ""안의 jsp파일로 이동
		String path = "view/loginOut.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

}
