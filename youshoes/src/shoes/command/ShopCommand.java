package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ProductDAO;
import shoes.dao.sMemDAO;
import shoes.dto.pdtDTO;
import shoes.dto.smDTO;

public class ShopCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		sMemDAO sMDAO = new sMemDAO();
		smDTO smem = sMDAO.sMemSelectOne("manshoes01");
		
		List<pdtDTO> plist = new ArrayList<pdtDTO>();
		ProductDAO pDAO = new ProductDAO();
		//smid, type, gender, kind
		plist=pDAO.productList("manshoes01","P","M", "S02");
		
		request.setAttribute("smem", smem);
		request.setAttribute("plist", plist);
		
		return "/view/shop.jsp";
	}

}
