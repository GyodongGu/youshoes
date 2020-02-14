package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.pdtDTO;

public class ProductDAO extends DAO{
	public List<pdtDTO> productList(String smid, String type, String gender, String kind){
		
		List<pdtDTO> list = new ArrayList<pdtDTO>();
		
		String sql = "select * from product where sm_id=? and pdt_type_cd =? and gender_cd=? and pdt_kind_cd=?";
												 //manshoes01	//P or C			//M or W		//S01,02,03
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, smid);
			pstmt.setString(2, type);
			pstmt.setString(3, gender);
			pstmt.setString(4, kind);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pdtDTO pdto = new pdtDTO();
				pdto.setPdt_no(rs.getInt("pdt_no"));
				pdto.setPdt_name(rs.getString("pdt_name"));
				pdto.setSm_id(rs.getString("sm_id"));
				//pdt_type_cd, pdt_kind_cd, gender_cd,pdt_price, pdt_stat_cd, pdt_date
				pdto.setPdt_type_cd(rs.getString("pdt_type_cd"));
				pdto.setPdt_kind_cd(rs.getString("pdt_kind_cd"));
				pdto.setGender_cd(rs.getString("gender_cd"));
				pdto.setPdt_price(rs.getInt("pdt_price"));
				pdto.setPdt_stat_cd(rs.getString("pdt_stat_cd"));
				pdto.setPdt_date(rs.getDate("pdt_date"));
				
				list.add(pdto);						
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
