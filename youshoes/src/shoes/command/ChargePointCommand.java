package shoes.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;
import shoes.common.Command;
import shoes.dao.pmDAO;
import shoes.dto.pmDTO;

public class ChargePointCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pmDAO chpDao = new pmDAO();
		
		int pmNo = ((pmDTO)request.getSession().getAttribute("pmDTO")).getPm_no();
		int selValue = Integer.parseInt(request.getParameter("charge_point"));
		
		int chp = chpDao.pointUpdate(pmNo, selValue);
		
		// 세션에 포인트 변경
		String id = (String) request.getSession().getAttribute("id");
		pmDAO dao = new pmDAO();
		pmDTO dto = dao.selectOne(id);
		HttpSession httpsession = request.getSession();
		httpsession.setAttribute("pmDTO", dto);
		
		Map<String, Object> maps = new HashMap<>();
		maps.put("suc", chp);
		maps.put("sucPoint", dto.getPoint_now());
		
		String result = JSONObject.fromObject(maps).toString(); 
		
		return "ajax:"+result;
	}

}
