package shoes.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.deliveryDTO;
import shoes.dto.ordDTO;
import shoes.dto.ordDetailDTO;
import shoes.dto.pdtDTO;
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
			while (rs.next()) {
				dto.setPm_no(rs.getInt("pm_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto; // 한 회원의 정보를 넘김
	}
	
	public List<deliveryDTO> select2(int id) {
		List<deliveryDTO> list = new ArrayList<deliveryDTO>();
		String sql = "select b.ord_no ord_no, a.invoice_no invoice_no, b.pm_no  pm_no \r\n" + 
				"from delivery a, ord b \r\n" + 
				"where a.ord_no = b.ord_no \r\n" + 
				"and b.pm_no = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				deliveryDTO dto = new deliveryDTO();
				dto.setOrd_no(rs.getInt("ord_no"));
				dto.setInvoice_no(rs.getInt("invoice_no"));
				list.add(dto);
				System.out.println(dto.getInvoice_no());
				System.out.println(dto.getOrd_no());
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list; // 배송 테이블과 오더 테이블을 조인하여 주문자번호를 입력해서 주문번호와, 배송번호를 리턴
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
	
	/*
	 * public ordDetailDTO dnum(String id, int no) { ordDetailDTO dto = new
	 * ordDetailDTO(); String sql =
	 * "select DISTINCT b.invoice_no invoice, a.ord_no\r\n" +
	 * "from ord a, ord_detail b, purchase_member c \r\n" +
	 * "where a.ord_no = b.ord_no \r\n" + "and a.pm_no = c.pm_no \r\n" +
	 * "and c.pm_id = ? and b.ord_no= ? "; try { pstmt = conn.prepareStatement(sql);
	 * pstmt.setString(1, id); pstmt.setInt(2, no); rs = pstmt.executeQuery();
	 * while(rs.next()) { dto.setOrder_d_no(rs.getInt("invoice"));
	 * dto.setOrder_no(rs.getInt("ord_no")); } } catch (Exception e) {
	 * e.printStackTrace(); } return dto; //pm_id와 ord_no를 통한 운송장번호와 주문번호를 리턴 }
	 */
	
}