package shoes.dao;

import java.sql.SQLException;

public class CodeDAO extends DAO{
	
	public String CodeName(String cid) {
		String x="";
		
		String sql="select code_name from code where code_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				x=rs.getString("code_name");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return x;
	}

}
