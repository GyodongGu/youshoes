package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.noticeDAO;
import shoes.dao.reviewListDAO;
import shoes.dto.noticeDTO;
import shoes.dto.reviewDTO;

public class pMemEventCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		noticeDAO dao = new noticeDAO();
		ArrayList<noticeDTO> list = new ArrayList<noticeDTO>();

		// 전체 리스트 갖고오기
		list = dao.noticeSelect();

		request.setAttribute("list", list);

		String path = "view/pMem/pMemEvent.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

}
