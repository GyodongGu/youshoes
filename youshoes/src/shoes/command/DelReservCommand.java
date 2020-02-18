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
			String reserv1 = request.getParameter("res_no");
			int reserv2 = 0;
			try {
				reserv2 = Integer.parseInt(reserv1);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setRes_no(reserv2);
			dao.deleteform(dto);
		return "ajax:" + reserv1;
	}

}
