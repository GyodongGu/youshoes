package shoes.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class loginOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
		String id = request.getParameter("pm_id");
		String pw = request.getParameter("pm_pw");
		
		//단건조회dao로 해당회원정보 가져오기
		pmDAO dao = new pmDAO();
		pmDTO dto = dao.selectOne(id);
		
		// DB에서 아이디, 비밀번호 확인
		String grant = dao.loginCheck(id, pw);

		if (grant == null) {   // id와 pw가 일치하지않다면
			return "script:"+"alert('아이디/비밀번호를 알맞게 입력하세요.'); location.href='view/login.jsp';";

		} else {   	// 로그인 성공하면 (id와 pw가 일치) ""안의 페이지로 이동
			// 자바객체를 이용해서 session객체를 이용
			HttpSession httpsession = request.getSession(); 
			httpsession.setAttribute("id", id);
			httpsession.setAttribute("grant", grant);
			httpsession.setAttribute("pmDTO", dto);
			System.out.println(grant);
			if(grant.equals("M03")) {
				return "redirect:pMem.do";
			}else {
				return "redirect:/admin/sMem.do";
			}
			
		}
	}

}
