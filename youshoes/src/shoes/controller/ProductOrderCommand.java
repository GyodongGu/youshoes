package shoes.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ProductOrderDAO;
import shoes.dto.pmDTO;
import shoes.dto.reservationDTO;

public class ProductOrderCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		pmDTO dto1 = new pmDTO();
		ProductOrderDAO dao1 = new ProductOrderDAO();
		dto1 = dao1.select(id);
		
		int no = dto1.getPm_no();
		reservationDTO dto2 = new reservationDTO();
		ProductOrderDAO dao2 = new ProductOrderDAO();
		dto2 = dao2.datingSelect(no);
		Date date2 = dto2.getRes_date();
		SimpleDateFormat chan = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String format = chan.format(date2);
		request.setAttribute("dto", dto2);
		request.setAttribute("res_date", format);
		
		String pdt_type = request.getParameter("type");
		request.setAttribute("pdt_type", pdt_type);
		
		return "/view/pMem/productOrder.jsp";
	}

}
