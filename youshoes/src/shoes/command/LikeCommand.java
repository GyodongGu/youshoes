package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.LikeDAO;
import shoes.dto.likeDTO;

public class LikeCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		LikeDAO ldao = new LikeDAO();
		likeDTO ldto = new likeDTO();
		
		int rw_no = Integer.parseInt(request.getParameter("rw_no"));
		System.out.println(rw_no);
		
		HttpSession httpsession = request.getSession(true);
		String pmid= (String) httpsession.getAttribute("id");
		ldto.setRw_no(rw_no);
		ldto.setPm_id(pmid);
		LikeDAO lddao = new LikeDAO();
		boolean x = lddao.SelectLike(ldto);
		
		if(x) {
			ldao.DeleteLike(ldto);
		}else {
			ldao.InsertLike(ldto);
		}	
		return "ajax:"+x;
	}

}
