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

public class DelReservCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CallenderDAO dao = new CallenderDAO();
			reservationDTO dto = new reservationDTO();
			String reserv1 = request.getParameter("date");
			Date reserv2 = null;
			try {
				reserv2 = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(reserv1).getTime());
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setRes_date(reserv2);
			dto.setRes_no(3);
			dao.deleteform(dto);
		return "ajax:" + reserv1;
	}

}
