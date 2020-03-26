package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ReplyListDAO;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;
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
		
		HttpSession httpsession = request.getSession(true);
		
		pmDTO pmdto = new pmDTO();
		pmdto=(pmDTO) httpsession.getAttribute("pmDTO");
		
		String name = pmdto.getPm_name();
		System.out.println(name);
		//String name = "구교동";
		
		int rwno=Integer.parseInt(request.getParameter("rw_no"));
		String smid = request.getParameter("sm_id");
		rdto.setRw_no(rwno);
		rdto.setReply_content(con);
		rdto.setReply_member(name);
		
		result=RlistDAO.insertReply(rdto);
		System.out.println(result+"건 입력되었습니다.");
		return "redirect:/youshoes/ReplyList.do?rw_no="+rwno+"&sm_id="+smid;
	}

}
