package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ReplyListDAO;
import shoes.dto.replyDTO;

public class ReplyInsertCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReplyListDAO RlistDAO = new ReplyListDAO();
		replyDTO rdto= new replyDTO();
		int result;
		String con = request.getParameter("Reply_content");
		String name = "구교동";
		rdto.setRw_no(1);
		rdto.setReply_content(con);
		rdto.setReply_member(name);
		
		result=RlistDAO.insertReply(rdto);
		System.out.println(result+"건 입력되었습니다.");
		return "/ReplyList.do";
	}

}
