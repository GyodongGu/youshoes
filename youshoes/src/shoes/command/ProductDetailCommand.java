package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ProductDAO;
import shoes.dto.pdtDTO;

public class ProductDetailCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int no = Integer.parseInt(request.getParameter("pdt_no"));
		ProductDAO pDAO = new ProductDAO();
		pdtDTO pdto = new pdtDTO();
		pdto = pDAO.productDetail(no);
		
		request.setAttribute("pdto", pdto);
		
		return "/view/pMem/productDetail.jsp";
	}

}
