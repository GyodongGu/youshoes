package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.pmDAO;

public class loginOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDAO dao = new pmDAO();

		// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
		String id = request.getParameter("pm_id");
		String pw = request.getParameter("pm_pw");
		
		// DB에서 아이디, 비밀번호 확인
		String grant = dao.loginCheck(id, pw);

		if (grant == null) {   // id와 pw가 일치하지않다면
			response.sendRedirect("view/login.jsp");
			
		} else {   	// 로그인 성공하면 (id와 pw가 일치) ""안의 페이지로 이동
			HttpSession httpsession = request.getSession(); // 자바객체를 이용해서 session객체를 이용할 떄
			httpsession.setAttribute("pm_id", id);
			httpsession.setAttribute("grant", grant);

			response.sendRedirect("view/pMem/pMem.jsp");
		}
		return null;
	}

}
