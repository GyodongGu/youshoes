package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.reviewDTO;

public class reviewListDAO extends DAO{
	public List<reviewDTO> reviewlist(){
		
		List<reviewDTO> list= new ArrayList<reviewDTO>();
		
		String sql="select r.* from product p join purchase_review r on p.pdt_no=r.pdt_no where sm_id='manshoes01'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				//rw_no, pm_id, rw_cnt, rw_stars, rw_date, rw_content
				reviewDTO rdto=new reviewDTO();
				rdto.setRw_no(rs.getInt("rw_no"));
				rdto.setPm_id(rs.getString("pm_id"));
				rdto.setRw_cnt(rs.getInt("rw_cnt"));
				rdto.setRw_stars(rs.getInt("rw_stars"));
				rdto.setRw_date(rs.getDate("rw_date"));
				rdto.setRw_content(rs.getString("rw_content"));
				list.add(rdto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	public String reviewImg(int i) {
		String sql="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I03' and section_no=?";
		String name="";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, i);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				name = rs.getString("img_name");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return name;
	}
	
	
	
	
	
	
	
	
}
