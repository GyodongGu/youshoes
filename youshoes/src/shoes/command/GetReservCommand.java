package shoes.command;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import shoes.common.Command;
import shoes.dao.CallenderDAO;

public class GetReservCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CallenderDAO dao = new CallenderDAO();
			String smid = request.getParameter("smid");
			List<Map<String, Object>> list = dao.selectform(smid);
			String result = JSONArray.fromObject(list).toString();
		return "ajax:" + result;
	}

}
