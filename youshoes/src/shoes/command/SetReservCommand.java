package shoes.command;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.CallenderDAO;
import shoes.dto.reservationDTO;

public class SetReservCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CallenderDAO dao = new CallenderDAO();
			reservationDTO dto = new reservationDTO();
			String reserv1 = request.getParameter("res_date");
			String smid = request.getParameter("sm_id");
			
			try {
				dto.setRes_date(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd hh:mm").parse(reserv1).getTime()));
				dto.setSm_id(smid);
			} catch (Exception e) {
				e.printStackTrace();
			}
			int r;
			r=dao.insertform(dto);
		return "ajax:" + reserv1;
	}

}
