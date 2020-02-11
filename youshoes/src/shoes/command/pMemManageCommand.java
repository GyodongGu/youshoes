package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class pMemManageCommand implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		pmDAO pdao = new pmDAO();
		List<pmDTO> list = pdao.pmSelect();
		
		request.setAttribute("list", list);
		
		return "/view/admin/pMemManage.jsp";
	}

}
