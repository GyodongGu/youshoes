package shoes.command;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.CodeDAO;
import shoes.dao.ProductDAO;
import shoes.dao.ProductOrderDAO;
import shoes.dao.pmDAO;
import shoes.dto.pdtDTO;
import shoes.dto.pmDTO;
import shoes.dto.reservationDTO;

public class ProductOrderCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		pmDTO ppmdto = new pmDTO();
		ppmdto=(pmDTO) session.getAttribute("pmDTO");
		int pmno = ppmdto.getPm_no();
		/*
		 * pmDTO dto1 = new pmDTO(); ProductOrderDAO dao1 = new ProductOrderDAO(); dto1
		 * = dao1.select(id);
		 * 
		 * int no = dto1.getPm_no(); //회원 id에 해당하는 회원번호 reservationDTO dto2 = new
		 * reservationDTO(); ProductOrderDAO dao2 = new ProductOrderDAO(); dto2 =
		 * dao2.datingSelect(no); //System.out.println(dto2); if(dto2.getRes_date() !=
		 * null) { Date date2 = dto2.getRes_date(); SimpleDateFormat chan = new
		 * SimpleDateFormat("yyyy-MM-dd HH:mm"); String format = chan.format(date2);
		 * request.setAttribute("dto", dto2); //회원의 예약번호
		 * request.setAttribute("res_date", format); //회원의 예약날짜 }
		 */
		
		String resdate = request.getParameter("result");
		request.setAttribute("resdate", resdate);
		
		
		//맞춤화 코드 전송
		String pdt_type = request.getParameter("type");
		request.setAttribute("pdt_type", pdt_type);
		
		//======================================================================//
		
		String smid = request.getParameter("sm_id");
		String pdt_no= request.getParameter("pdt_no");
		String[] osize=request.getParameterValues("ord_size");
		String[] odpoint=request.getParameterValues("ord_detail_point");
		String[] ocolor=request.getParameterValues("ord_color");
		String[] ocnt=request.getParameterValues("ord_cnt");
		
		ProductDAO pDAO = new ProductDAO();
		pdtDTO pdto = new pdtDTO();
		pdto = pDAO.productDetail(Integer.parseInt(pdt_no),pmno);
		
		
		String[] oname=null;
		if(ocolor!=null) {
			CodeDAO cDAO = new CodeDAO();
			oname = new String[ocolor.length];
			for(int i=0;i<ocolor.length;i++) {
				oname[i]=cDAO.CodeName(ocolor[i]);
			}
		}
		
		
		
		pmDAO pmdao = new pmDAO();
		pmDTO pmdto = new pmDTO();
		pmdto = pmdao.selectOne(id);
		
		
		request.setAttribute("smid", smid);
		request.setAttribute("pdt_no", pdt_no);
		request.setAttribute("osize", osize);
		request.setAttribute("odpoint", odpoint);
		request.setAttribute("ocolor", ocolor);
		request.setAttribute("oname", oname);
		request.setAttribute("ocnt", ocnt);
		request.setAttribute("pdto", pdto);
		request.setAttribute("pmdto", pmdto);
		
		/*
		 * for(int i =0; i<ocolor.length; i++) { System.out.println(ocolor[i]+"색깔dd");
		 * System.out.println(odpoint[i+1] +"포인트"); }
		 */
		
		
		return "/view/pMem/productOrder.jsp";
	}

}
