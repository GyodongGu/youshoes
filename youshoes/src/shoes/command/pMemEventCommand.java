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
		noticeDAO ndao = new noticeDAO();
		List<noticeDTO> pmemEvent = ndao.noticeSelect();
		request.setAttribute("pmemEvent", pmemEvent);

		return "/view/pMem/pMemEvent.jsp";
	}

}
