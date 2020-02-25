package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.OrderPaymentDAO;
import shoes.dto.deliveryDTO;
import shoes.dto.ordDetailDTO;

public class OrderPaymentCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		OrderPaymentDAO opDAO = new OrderPaymentDAO();
		int pmno= Integer.parseInt(request.getParameter("pm_no"));
		int pdtno = Integer.parseInt(request.getParameter("pdt_no"));
		int ordpoint=Integer.parseInt(request.getParameter("ord_point"));
		
		
		opDAO.InsertOrd(pmno, pdtno, ordpoint); //회원번호, 제품번호, 결제포인트
		
		//사이즈, 색상, 수량, 세부 포인트
		String[] osize=request.getParameterValues("ord_size");
		String[] odpoint=request.getParameterValues("ord_detail_point");
		String[] ocolor=request.getParameterValues("ord_color");
		String[] ocnt=request.getParameterValues("ord_cnt");
		
		for(int i=0; i<osize.length; i++) {
			ordDetailDTO oddto = new ordDetailDTO();
			oddto.setOrd_size(Integer.parseInt(osize[i]));
			oddto.setOrd_color(ocolor[i]);
			oddto.setOrd_cnt(Integer.parseInt(ocnt[i]));
			oddto.setOrd_detail_point(Integer.parseInt(odpoint[i]));
			
			opDAO.InsertOrdDetail(oddto);
		}
		
		int point = Integer.parseInt(request.getParameter("point_now"));
		opDAO.updatePmPoint(point, pmno);
		
		deliveryDTO ddto = new deliveryDTO();
		ddto.setDlvy_name(request.getParameter("pm_name"));
		ddto.setDlvy_tell(request.getParameter("pm_tell"));
		ddto.setDlvy_post(request.getParameter("pm_postcode"));
		ddto.setDlvy_addr1(request.getParameter("pm_address"));
		ddto.setDlvy_addr2(request.getParameter("pm_detailAddress"));
		ddto.setDlvy_addr3(request.getParameter("pm_extraAddress"));
		ddto.setDlvy_remark(request.getParameter("remarkSelect"));
		
		
		opDAO.insertDelivery(ddto);
			
		
		return "/orderHistory.do";
	}

}
