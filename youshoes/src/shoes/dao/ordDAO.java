package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.ordDTO;

/**
 * @author 유승우 
 * 1. 구매 유저가 자기 결제한 내역 확인
 */

public class ordDAO extends DAO {
	public List<ordDTO> selectOrderList(int id) {
		List<ordDTO> list = new ArrayList<ordDTO>();
		
		String sql= "select * from ord where ord_no=?";
		try { 
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			
			
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
		} finally {
			close();
		}
		return list;
	}

}
