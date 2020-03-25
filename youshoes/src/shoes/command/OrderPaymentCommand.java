package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.CallenderDAO;
import shoes.dao.OrderPaymentDAO;
import shoes.dao.PayHistoryDAO;
import shoes.dao.pmDAO;
import shoes.dto.deliveryDTO;
import shoes.dto.ordDetailDTO;
import shoes.dto.pmDTO;
import shoes.dto.reservationDTO;

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
		
		
		PayHistoryDAO pdao = new PayHistoryDAO();
		pdao.insertPayHistory(ordpoint);
		
		//사이즈, 색상, 수량, 세부 포인트
		String[] osize=request.getParameterValues("ord_size");
		String[] odpoint=request.getParameterValues("ord_detail_point");
		String[] ocolor=request.getParameterValues("ord_color");
		String[] ocnt=request.getParameterValues("ord_cnt");
		
		if(osize !=null && ocolor !=null && ocnt !=null) {
			for(int i=0; i<osize.length; i++) {
				ordDetailDTO oddto = new ordDetailDTO();
				oddto.setOrd_size(Integer.parseInt(osize[i]));
				oddto.setOrd_color(ocolor[i]);
				oddto.setOrd_cnt(Integer.parseInt(ocnt[i]));
				oddto.setOrd_detail_point(Integer.parseInt(odpoint[i]));
				
				opDAO.InsertOrdDetail(oddto);
			}
		}else {
			ordDetailDTO oddto = new ordDetailDTO();
			oddto.setOrd_detail_point(Integer.parseInt(odpoint[0]));
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
		
		ddto.setDlvy_cd(request.getParameter("remarkSelect"));
		ddto.setDlvy_remark(request.getParameter("etc"));
		
		opDAO.insertDelivery(ddto);
		
		
		CallenderDAO dao1 = new CallenderDAO();
		reservationDTO dto1 = new reservationDTO();
		String reserv1 = request.getParameter("res_date");
		String smid = request.getParameter("sm_id");
		System.out.println(smid);
		
		/*
		 * try {
		 * 
		 * dto1.setReserv_date((String)(new
		 * SimpleDateFormat("yyyy-MM-dd hh:mm").parse(reserv1).getTime())); } catch
		 * (ParseException e) { // TODO Auto-generated catch block e.printStackTrace();
		 * }
		 */
		
		/*
		 * SimpleDateFormat simple= new SimpleDateFormat("yyyy-MM-dd hh:mm"); String
		 * insertdate=simple.format(reserv1.gettim);
		 */
		if(reserv1!=null) {
			dto1.setReserv_date(reserv1);
			dto1.setSm_id(smid);
			int r;
			r=dao1.insertform(dto1);
			System.out.println(r+"건 예약되었습니다.");
		}
		
		
		
		HttpSession httpsession = request.getSession(); 
		String id = (String) httpsession.getAttribute("id");
		pmDAO dao = new pmDAO();
		pmDTO dto = dao.selectOne(id);
		
		httpsession.setAttribute("pmDTO", dto);
			
		
		return "redirect:/youshoes/orderHistory.do";
	}

}
