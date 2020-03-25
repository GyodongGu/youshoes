package shoes.dao;

import java.sql.SQLException;

public class PayHistoryDAO extends DAO{
	
	public int insertPayHistory(int paypoint) {
		int result = 0;
		
		String sql = "insert into pay_history values((select max(ord_no)from ord),sysdate,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, paypoint);
			result = pstmt.executeUpdate();
			
			System.out.println("pay_history에 "+result +"건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}

}
