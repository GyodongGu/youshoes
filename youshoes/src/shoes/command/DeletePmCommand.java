package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.BackupDAO;
import shoes.dao.ImageDAO;
import shoes.dao.ordDAO;
import shoes.dao.pmDAO;
import shoes.dto.backupDTO;
import shoes.dto.ordDTO;
import shoes.dto.pmDTO;

public class DeletePmCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		pmDTO pdto = (pmDTO)session.getAttribute("pmDTO");
		int pmno = pdto.getPm_no();
		String pmid = pdto.getPm_id();
		
		
		//백업정보 입력
		
		ordDAO odao = new ordDAO();
		List<ordDTO> list = new ArrayList<ordDTO>();
		list = odao.pmOrdList(pmno);
		System.out.println(list.size());
		for(int i =0; i<list.size(); i++) {
			ordDTO odto = new ordDTO();
			odto = list.get(i);
			
			backupDTO bdto = new backupDTO();
			bdto.setOrd_no(odto.getOrd_no());
			bdto.setPm_no(odto.getPm_no());
			bdto.setOrd_date(odto.getOrd_date());
			bdto.setOrd_point(odto.getOrd_point());
			bdto.setOrd_stat_cd(odto.getOrd_stat_cd());
			bdto.setOrd_cnt(odto.getOrd_cnt());
			bdto.setPdt_no(odto.getPdt_no());
			
			BackupDAO bdao = new BackupDAO();
			bdao.insertBackup(bdto);
		}
		
		//해당 회원 프로필 사진 삭제
		ImageDAO idao = new ImageDAO();
		idao.deleteProfileImage(pmno);
		//해당 해원 리뷰사진 삭제
		ImageDAO ridao = new ImageDAO();
		ridao.deleteReviewImage(pmid);
		
		//해당 회원정보 삭제
		pmDAO pdao = new pmDAO();
		pdao.deletePm(pmno);
		
		
		return "redirect:/youshoes/view/login.jsp";
	}

}
