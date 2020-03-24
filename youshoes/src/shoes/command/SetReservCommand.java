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

			String reserv1 = request.getParameter("res_date");
			String smid = request.getParameter("sm_id");

		return "ajax:" + reserv1;
	}

}
