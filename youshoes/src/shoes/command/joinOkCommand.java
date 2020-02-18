package shoes.command;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class joinOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		pmDAO dao = new pmDAO();
		pmDTO dto = new pmDTO();

		//날짜타입을 문자타입으로 변환
		String sdate = request.getParameter("pm_birth");
		Date bdate = null;
		try {
			bdate = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(sdate).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}

		// Parameter 추출
		// 아이디, 비밀번호, 이름, 생년월일, 이메일, 전화번호, 우편번호, 주소, 상세주소, 참고항목
		dto.setPm_id(request.getParameter("pm_id"));
		dto.setPm_pw(request.getParameter("pm_pw"));
		dto.setPm_name(request.getParameter("pm_name"));
		dto.setPm_birth(bdate);
		dto.setPm_email(request.getParameter("pm_email"));
		dto.setPm_tell(request.getParameter("pm_tell"));
		dto.setPm_post(request.getParameter("pm_post"));
		dto.setPm_addr1(request.getParameter("pm_addr1"));
		dto.setPm_addr2(request.getParameter("pm_addr2"));
		dto.setPm_addr3(request.getParameter("pm_addr3"));
		int n = dao.pmInsert(dto);

		// request가 유지되는 동안 request에 데이터를 저장

		request.setAttribute("pass", n);
		return "view/joinOk.jsp";
	}

}