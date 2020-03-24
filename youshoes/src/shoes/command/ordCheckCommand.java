package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ordDAO;

public class ordCheckCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ordDAO odao = new ordDAO();
		String ordno = request.getParameter("ord_no");
		
		odao.updateOrdStat(Integer.parseInt(ordno));
		
		return "redirect:/youshoes/profile.do";
	}

}
