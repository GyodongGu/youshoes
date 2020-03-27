package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		
		String sql= "select * from ord o join product p on o.pdt_no = p.pdt_no where pm_no =?";
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
				oddto.setPdt_type_cd(rs.getString("pdt_type_cd"));
				list.add(oddto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public List<ordDTO> OrdListPager(int pmno, int page){
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql="select * from ( " + 
				" select rownum num, n.* " + 
				" from (select * from ord o join product p on o.pdt_no = p.pdt_no where pm_no =? order by ord_no desc) n " + 
				" ) " + 
				" where num between ? and ?";
		
		String sql1="select rw_no from purchase_review where ord_no=?";
		//주문번호, 회원번호
		PreparedStatement pstmt1;
		ResultSet rs1;
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
				CodeDAO ctdao = new CodeDAO();
				oddto.setPdt_type_cd(ctdao.CodeName(rs.getString("pdt_type_cd")));
				
				refundDAO rdao = new refundDAO();
				int cnt = rdao.selectRefund(rs.getInt("ord_no"));
				oddto.setRefund(cnt);
				
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setInt(1, rs.getInt("ord_no"));
				rs1=pstmt1.executeQuery();
				while(rs1.next()) {
					oddto.setRw_no(rs1.getInt("rw_no"));
				}
				
				list.add(oddto);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
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
		} finally {
			close();
		}
		
		return count;
	}
	public List<ordDTO> ordListCheck(int pmno){
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql = "select o.*, p.pdt_name from ord o join product p on o.pdt_no = p.pdt_no where ord_stat_cd !='O04' and pm_no=?";

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ordDTO odto = new ordDTO();
				odto.setOrd_no(rs.getInt("ord_no"));
				odto.setPm_no(rs.getInt("pm_no"));
				odto.setPdt_no(rs.getInt("pdt_no"));
				odto.setOrd_date(rs.getDate("ord_date"));
				odto.setOrd_point(rs.getInt("ord_point"));
				odto.setOrd_stat_cd(rs.getString("ord_stat_cd"));
				odto.setPdt_name(rs.getString("pdt_name"));
				list.add(odto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	public int updateOrdStat(int ordno) {
		int result = 0;
		
		String sql = "update ord set ord_stat_cd='O04' where ord_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ordno);
			result = pstmt.executeUpdate();
			System.out.println("ord_stat_cd가 "+result+"건 변경되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	public int deleteOrd(int ordno) {
		int result = 0;
		
		String sql = "delete from ord where ord_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ordno);
			result = pstmt.executeUpdate();
			System.out.println("주문"+result + "건 삭제되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	public int ordPoint(int ordno) {
		int result=0;
		
		String sql = "select * from ord where ord_no = ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ordno);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("ord_point");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result;
	}
	
	public List<ordDTO> pmOrdList(int pmno){
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql = "select o.ord_no,pm_no,pdt_no,ord_date,ord_point,ord_stat_cd, sum(ord_cnt) ord_cnt from ord o join ord_detail d on o.ord_no=d.ord_no where pm_no=? group by o.ord_no,pm_no,pdt_no,ord_date,ord_point,ord_stat_cd";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ordDTO odto = new ordDTO();
				odto.setOrd_no(rs.getInt("ord_no"));
				odto.setPm_no(rs.getInt("pm_no"));
				odto.setOrd_date(rs.getDate("ord_date"));
				odto.setOrd_point(rs.getInt("ord_point"));
				odto.setOrd_stat_cd(rs.getString("ord_stat_cd"));
				odto.setOrd_cnt(rs.getInt("ord_cnt"));
				odto.setPdt_no(rs.getInt("pdt_no"));
				list.add(odto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}

}
