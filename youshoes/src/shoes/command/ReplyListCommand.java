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
		String smid = request.getParameter("sm_id");
		
		ReplyListDAO repDAO = new ReplyListDAO();
		int rwno = Integer.parseInt(request.getParameter("rw_no"));
		List<replyDTO> reply = repDAO.ReplyList(rwno);
		request.setAttribute("reply", reply);
		request.setAttribute("rwno", rwno);
		request.setAttribute("smid", smid);
		return "/view/pMem/insertReply.jsp";
	}

}
