package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.sMemDAO;
import shoes.dto.smDTO;

public class ShopCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		sMemDAO sMDAO = new sMemDAO();
		smDTO smem = sMDAO.sMemSelectOne("manshoes01");
		
		request.setAttribute("smem", smem);
		
		return "/view/shop.jsp";
	}

}
