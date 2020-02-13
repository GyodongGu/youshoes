package shoes.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;

public class JoinOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		pmDAO dao = new pmDAO();
		
		// Parameter 추출
		// 아이디, 비밀번호, 비밀번화확인, 이름, 생년월일, 이메일, 전화번호, 우편번호, 주소, 상세주소, 참고항목
		String id = request.getParameter("pm_id");
		String pw = request.getParameter("pm_pw");
		String name = request.getParameter("pm_name");
		String mail = request.getParameter("mail");

		// request가 유지되는 동안 request에 데이터를 저장
		request.setAttribute("id", id);

		String path = "view/memberInput.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);

		// request, response 를 주는 이유는 어떤 아이디가 저장되었는지 다시 보여주기 위해 정보를 넘기는 것
		dispatcher.forward(request, response);
		return null;
	}

}
