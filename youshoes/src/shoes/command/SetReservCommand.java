package shoes.command;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.CallenderDAO;

public class SetReservCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CallenderDAO dao = new CallenderDAO();
			String reserv1 = request.getParameter("res_date");
			Date reserv2 = null;
			try {
				reserv2 = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd hh:mm").parse(reserv1).getTime());
			} catch (Exception e) {
				e.printStackTrace();
			}
			int r;
			r=dao.insertform(reserv2);
			System.out.println(reserv2);

		return "ajax:" + reserv1;
	}

}
