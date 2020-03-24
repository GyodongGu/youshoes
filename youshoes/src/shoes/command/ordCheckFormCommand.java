package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ProductOrderDAO;
import shoes.dao.ordDAO;
import shoes.dto.ordDTO;
import shoes.dto.pmDTO;

public class ordCheckFormCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ordDAO odao = new ordDAO();
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		pmDTO dto = new pmDTO();
		ProductOrderDAO dao = new ProductOrderDAO();
		dto = dao.select(id);
		
		int pmno = dto.getPm_no();
		List<ordDTO> list = new ArrayList<ordDTO>();
		list = odao.ordListCheck(pmno);
		request.setAttribute("list", list);
		
		return "/view/pMem/ordCheck.jsp";
	}

}
