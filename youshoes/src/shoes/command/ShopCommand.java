package shoes.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoes.common.Command;
import shoes.dao.ProductDAO;
import shoes.dao.sMemDAO;
import shoes.dto.pdtDTO;
import shoes.dto.pmDTO;
import shoes.dto.smDTO;

public class ShopCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String smid=request.getParameter("sm_id");
		sMemDAO sMDAO = new sMemDAO();
		smDTO smem = sMDAO.sMemSelectOne(smid);

		
		//smid
		List<pdtDTO> plist = new ArrayList<pdtDTO>();
		ProductDAO pDAO = new ProductDAO();
		plist=pDAO.productList(smid, "P", "M", "S01");
		
		List<pdtDTO> pmolist = new ArrayList<pdtDTO>();
		ProductDAO pmoDAO = new ProductDAO();
		pmolist=pmoDAO.productList(smid, "P", "M", "S01");
		
		List<pdtDTO> pmtlist = new ArrayList<pdtDTO>();
		ProductDAO pmtDAO = new ProductDAO();
		pmtlist=pmtDAO.productList(smid, "P", "M", "S02");
		
		List<pdtDTO> pmthlist = new ArrayList<pdtDTO>();
		ProductDAO pmthDAO = new ProductDAO();
		pmthlist=pmthDAO.productList(smid, "P", "M", "S03");
		
		List<pdtDTO> pmflist = new ArrayList<pdtDTO>();
		ProductDAO pmfDAO = new ProductDAO();
		pmflist=pmfDAO.productList(smid, "P", "M", "S04");
		
		List<pdtDTO> pwolist = new ArrayList<pdtDTO>();
		ProductDAO pwoDAO = new ProductDAO();
		pwolist=pwoDAO.productList(smid, "P", "W", "S01");
		
		List<pdtDTO> pwtlist = new ArrayList<pdtDTO>();
		ProductDAO pwtDAO = new ProductDAO();
		pwtlist=pwtDAO.productList(smid, "P", "W", "S02");
		
		List<pdtDTO> pwthlist = new ArrayList<pdtDTO>();
		ProductDAO pwthDAO = new ProductDAO();
		pwthlist=pwthDAO.productList(smid, "P", "W", "S03");
		
		List<pdtDTO> pwflist = new ArrayList<pdtDTO>();
		ProductDAO pwfDAO = new ProductDAO();
		pwflist=pwfDAO.productList(smid, "P", "W", "S04");
		
		List<pdtDTO> cmolist = new ArrayList<pdtDTO>();
		ProductDAO cmoDAO = new ProductDAO();
		cmolist=cmoDAO.productList(smid, "C", "M", "S01");
		
		List<pdtDTO> cmtlist = new ArrayList<pdtDTO>();
		ProductDAO cmtDAO = new ProductDAO();
		cmtlist=cmtDAO.productList(smid, "C", "M", "S02");
		
		List<pdtDTO> cmthlist = new ArrayList<pdtDTO>();
		ProductDAO cmthDAO = new ProductDAO();
		cmthlist=cmthDAO.productList(smid, "C", "M", "S03");
		
		List<pdtDTO> cmflist = new ArrayList<pdtDTO>();
		ProductDAO cmfDAO = new ProductDAO();
		cmflist=cmfDAO.productList(smid, "C", "M", "S04");
		
		List<pdtDTO> cwolist = new ArrayList<pdtDTO>();
		ProductDAO cwoDAO = new ProductDAO();
		cwolist=cwoDAO.productList(smid, "C", "W", "S01");

		List<pdtDTO> cwtlist = new ArrayList<pdtDTO>();
		ProductDAO cwtDAO = new ProductDAO();
		cwtlist=cwtDAO.productList(smid, "C", "W", "S02");
		
		List<pdtDTO> cwthlist = new ArrayList<pdtDTO>();
		ProductDAO cwthDAO = new ProductDAO();
		cwthlist=cwthDAO.productList(smid, "C", "W", "S03");
		
		List<pdtDTO> cwflist = new ArrayList<pdtDTO>();
		ProductDAO cwfDAO = new ProductDAO();
		cwflist=cwfDAO.productList(smid, "C", "W", "S04");
		
		//-------------------------------------------------------------------------------------------------------------
		//type
		List<pdtDTO> typelist = new ArrayList<pdtDTO>();
		ProductDAO tDAO = new ProductDAO();
		typelist=tDAO.ProductType(smid);
		
		//p-gender
		List<pdtDTO> pgenderlist = new ArrayList<pdtDTO>();
		ProductDAO pgDAO = new ProductDAO();
		pgenderlist=pgDAO.ProductGender(smid, "P");
		//C-gender
		List<pdtDTO> cgenderlist = new ArrayList<pdtDTO>();
		ProductDAO cgDAO = new ProductDAO();
		cgenderlist=cgDAO.ProductGender(smid, "C");
		
		
		//kind
		List<pdtDTO> pmkindlist = new ArrayList<pdtDTO>();
		ProductDAO pmkDAO = new ProductDAO();
		pmkindlist=pmkDAO.ProductKind(smid, "P", "M");
		
		List<pdtDTO> pwkindlist = new ArrayList<pdtDTO>();
		ProductDAO pwkDAO = new ProductDAO();
		pwkindlist=pwkDAO.ProductKind(smid, "P", "W");
		
		List<pdtDTO> cmkindlist = new ArrayList<pdtDTO>();
		ProductDAO cmkDAO = new ProductDAO();
		cmkindlist=cmkDAO.ProductKind(smid, "C", "M");
		
		List<pdtDTO> cwkindlist = new ArrayList<pdtDTO>();
		ProductDAO cwkDAO = new ProductDAO();
		cwkindlist=cwkDAO.ProductKind(smid, "C", "W");
		
		
		request.setAttribute("smem", smem);
		request.setAttribute("plist", plist);
		request.setAttribute("typelist", typelist);
		request.setAttribute("pgenderlist", pgenderlist);
		request.setAttribute("cgenderlist", cgenderlist);
		
		request.setAttribute("pmkindlist", pmkindlist);
		request.setAttribute("pwkindlist", pwkindlist);
		request.setAttribute("cmkindlist", cmkindlist);
		request.setAttribute("cwkindlist", cwkindlist);
		
		request.setAttribute("pmolist", pmolist);
		request.setAttribute("pmtlist", pmtlist);
		request.setAttribute("pmthlist", pmthlist);
		request.setAttribute("pmflist", pmflist);
		
		request.setAttribute("pwolist", pwolist);
		request.setAttribute("pwtlist", pwtlist);
		request.setAttribute("pwthlist", pwthlist);
		request.setAttribute("pwflist", pwflist);
		
		request.setAttribute("cmolist", cmolist);
		request.setAttribute("cmtlist", cmtlist);
		request.setAttribute("cmthlist", cmthlist);
		request.setAttribute("cmflist", cmflist);
		
		request.setAttribute("cwolist", cwolist);
		request.setAttribute("cwtlist", cwtlist);
		request.setAttribute("cwthlist", cwthlist);
		request.setAttribute("cwflist", cwflist);
		
		
		return "/view/shop.jsp";
	}

}
