package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;

public class ReservationCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String smid = request.getParameter("sm_id");
		
		request.setAttribute("smid", smid);
		
		return "/view/pMem/reservation.jsp";
	}

}
