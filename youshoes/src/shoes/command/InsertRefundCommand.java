package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.ordDAO;
import shoes.dao.refundDAO;
import shoes.dto.refundDTO;

public class InsertRefundCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		refundDAO rdao = new refundDAO();
		refundDTO rdto = new refundDTO();
		String ordno = request.getParameter("ord_no");
		String reason =request.getParameter("refund_reason");
		
		ordDAO odao = new ordDAO();
		int point = odao.ordPoint(Integer.parseInt(ordno));
		
		rdto.setOrd_no(Integer.parseInt(ordno));
		rdto.setRefund_point(point);
		rdto.setRefund_reason(reason);
		rdao.insertRefund(rdto);
		
		return "redirect:/youshoes/orderHistory.do";
	}

}
