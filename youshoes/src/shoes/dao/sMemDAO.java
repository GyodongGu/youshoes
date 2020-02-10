package shoes.dao;

import java.sql.SQLException;

import shoes.dto.smDTO;

public class sMemDAO extends DAO{
	public smDTO sMemSelectOne(String str) {
		smDTO smdto= new smDTO();
		String sql="select * from sales_member where sm_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, str);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				smdto.setShop_name(rs.getString("shop_name"));
				smdto.setSm_name(rs.getString("sm_name"));
				smdto.setSm_tell(rs.getString("sm_tell"));
				smdto.setSm_post(rs.getString("sm_post"));
				smdto.setSm_addr1(rs.getString("sm_addr1"));
				smdto.setSm_addr2(rs.getString("sm_addr2"));
				smdto.setSm_addr3(rs.getString("sm_addr3"));
				smdto.setSm_remark(rs.getString("sm_remark"));
					
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
			
		return smdto;
	}

}
