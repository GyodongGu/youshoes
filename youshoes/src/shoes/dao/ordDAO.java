package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.codeDTO;
import shoes.dto.ordDTO;

/**
 * @author 유승우 
 * 1. 구매 유저가 자기 결제한 내역 확인
 */

public class ordDAO extends DAO {
	public List<ordDTO> selectOrderList(int id) {
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql= "select * from ord where pm_no=?";
		try { 
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ordDTO oddto = new ordDTO();
				oddto.setOrd_no(rs.getInt("ord_no"));
				oddto.setPm_no(rs.getInt("pm_no"));
				oddto.setPdt_no(rs.getInt("pdt_no"));
				oddto.setOrd_date(rs.getDate("ord_date"));
				oddto.setOrd_point(rs.getInt("ord_point"));
				oddto.setOrd_stat_cd(rs.getString("ord_stat_cd"));
				list.add(oddto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<ordDTO> OrdListPager(int pmno, int page){
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql="select * from ( " + 
				" select rownum num, n.* " + 
				" from (select * from ord where pm_no=? order by ord_no desc) n " + 
				" ) " + 
				" where num between ? and ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			pstmt.setInt(2, 1+(page-1)*5);
			pstmt.setInt(3, page*5);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ordDTO oddto = new ordDTO();
				oddto.setNum(rs.getInt("num"));
				oddto.setOrd_no(rs.getInt("ord_no"));
				oddto.setPm_no(rs.getInt("pm_no"));
				oddto.setPdt_no(rs.getInt("pdt_no"));
				oddto.setOrd_date(rs.getDate("ord_date"));
				oddto.setOrd_point(rs.getInt("ord_point"));
				CodeDAO cdao = new CodeDAO();
				oddto.setOrd_stat_cd(cdao.CodeName(rs.getString("ord_stat_cd")));
				list.add(oddto);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public int ordListCount(int pmno) {
		int count=0;
		
		String sql="select count(ord_no) count from ord where pm_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				count=rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}

}
