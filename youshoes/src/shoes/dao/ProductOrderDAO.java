package shoes.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;

import shoes.dto.pmDTO;
import shoes.dto.reservationDTO;

public class ProductOrderDAO extends DAO {

	public pmDTO select(String id) {
		pmDTO dto = new pmDTO();
		String sql = "select pm_no from purchase_member where pm_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setPm_no(rs.getInt("pm_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto; // 한 회원의 정보를 넘김
	}

	public reservationDTO datingSelect(int no) { 
		reservationDTO dto = new reservationDTO();
		String sql = "select res_date, res_no from reservation where pm_no = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if (rs.next())  
				dto.setRes_date(rs.getDate("res_date"));
				dto.setRes_no(rs.getInt("res_no"));
			} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;  // pm_no당 reservation 정보 리턴
	}
}