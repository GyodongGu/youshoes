package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ReplyListDAO;

import shoes.dto.replyDTO;

public class ReplyListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReplyListDAO repDAO = new ReplyListDAO();
		List<replyDTO> reply = repDAO.ReplyList(1);
		request.setAttribute("reply", reply);

		return "/view/pMem/insertReply.jsp";
	}

}
