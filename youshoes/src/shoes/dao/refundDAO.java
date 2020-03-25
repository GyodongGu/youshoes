package shoes.dao;

import java.sql.SQLException;

import shoes.dto.refundDTO;

public class refundDAO extends DAO{
	
	public int insertRefund(refundDTO rdto) {
		int result=0;
		
		String sql = "insert into refund values(?, sysdate, ?, ?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rdto.getOrd_no());
			pstmt.setInt(2, rdto.getRefund_point());
			pstmt.setString(3, rdto.getRefund_reason());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result;
	}
	
	public int selectRefund(int ordno) {
		int cnt = 0;
		
		String sql = "select count(*) cnt from refund where ord_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ordno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				cnt = rs.getInt("cnt");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

}
