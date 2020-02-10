package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.PMemDAO;
import shoes.dto.pmDTO;

public class PMemManageCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PMemDAO pdao = new PMemDAO();
		List<pmDTO> list = pdao.pmList();
		
		request.setAttribute("list", list);
		
		return "/view/admin/pMemManage.jsp";
	}

}
