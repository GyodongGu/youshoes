package shoes.command;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.CallenderDAO;
import shoes.dao.ProductOrderDAO;
import shoes.dto.pmDTO;
import shoes.dto.reservationDTO;

public class SetReservCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			HttpSession session = request.getSession(false);
			String id = (String) session.getAttribute("id");
			pmDTO dto = new pmDTO();
			ProductOrderDAO dao = new ProductOrderDAO();
			dto = dao.select(id);	
		
			
			CallenderDAO dao1 = new CallenderDAO();
			reservationDTO dto1 = new reservationDTO();
			String reserv1 = request.getParameter("res_date");
			String smid = request.getParameter("sm_id");
			/**
			int pmno = dto.getPm_no();
			try {
				dto1.setRes_date(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd hh:mm").parse(reserv1).getTime()));
				dto1.setSm_id(smid);
				dto1.setPm_no(pmno);
			} catch (Exception e) {
				e.printStackTrace();
			}
			int r;
			r=dao1.insertform(dto1);
			**/
		return "ajax:" + reserv1;
	}

}
