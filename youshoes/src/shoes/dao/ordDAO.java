package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.ordDTO;
import shoes.dto.ordDetailDTO;

/**
 * @author 유승우 
 * 1. 구매 유저가 자기 결제한 내역 확인
 */

public class ordDAO extends DAO {
	public List<ordDTO> selectOrderList(int id) {
		List<ordDTO> list = new ArrayList<ordDTO>();
		String sql = "select o.ord_no, o.ord_date, o.ord_point, os.ord_cnt, o.ord_stat_cd" 
					+ "	from  ord o, order_detail os"
					+ "	where o.ord_no = os.ord_no" 
					+ "	and o.ord_no = ?";
		try { 
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				ordDTO oddto = new ordDTO();
				oddto.setOrd_no(rs.getInt("ord_no"));
				oddto.setOrd_date(rs.getDate("ord_date"));
				oddto.setOrd_point(rs.getInt("ord_point"));
				oddto.setOrd_stat_cd(rs.getString("ord_stat_cd"));
				ordDetailDTO ddDTO = new ordDetailDTO();
				ddDTO.setOrder_cnt(rs.getInt("ord_cnt"));
				oddto.setOrdCnt(ddDTO);
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
