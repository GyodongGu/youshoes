package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ordDAO;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class DeleteOrdCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//세션값 가져오기
		HttpSession session = request.getSession();
		pmDTO pmdto = (pmDTO) session.getAttribute("pmDTO");
		String ordno = request.getParameter("ord_no");
		
		//현재 보유포인트값 가져오기
		int now = pmdto.getPoint_now();
		
		//취소될 주문의 포인트값 가져오기
		ordDAO odaopoint = new ordDAO();
		int opoint = odaopoint.ordPoint(Integer.parseInt(ordno));
		
		//현재 보유포인트에 취소될 포인트를 더하여 포인트를 복구
		int result = now+ opoint;
		pmDAO pdao = new pmDAO();
		pdao.refundPoint(pmdto.getPm_no(), result);
		
		//주문 취소
		ordDAO odao = new ordDAO();
		odao.deleteOrd(Integer.parseInt(ordno));
		
		//세션 리셋
		HttpSession httpsession = request.getSession(); 
		String id = (String) httpsession.getAttribute("id");
		pmDAO dao = new pmDAO();
		pmDTO dto = dao.selectOne(id);
		
		httpsession.setAttribute("pmDTO", dto);
		
		return "redirect:/youshoes/orderHistory.do";
	}

}
