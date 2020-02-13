package shoes.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		ldto.setRw_no(rw_no);
		ldto.setPm_id("pur01");
		boolean x = ldao.SelectLike(ldto);
		
		if(x) {
			ldao.DeleteLike(ldto);
		}else {
			ldao.InsertLike(ldto);
		}	
		return "/Review.do";
	}

}
