package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.imageDetailDTO;
import shoes.dto.smDTO;

public class sMemDAO extends DAO{
	public smDTO sMemSelectOne(String str) {
		smDTO smdto= new smDTO();
		String sql="select * from sales_member where sm_id=?";
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I01' and section_no=?";
		
		
		PreparedStatement pstmt1;
		ResultSet rs1;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, str);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				smdto.setSm_id(rs.getString("sm_id"));
				smdto.setShop_name(rs.getString("shop_name"));
				smdto.setSm_name(rs.getString("sm_name"));
				smdto.setSm_tell(rs.getString("sm_tell"));
				smdto.setSm_post(rs.getString("sm_post"));
				smdto.setSm_addr1(rs.getString("sm_addr1"));
				smdto.setSm_addr2(rs.getString("sm_addr2"));
				smdto.setSm_addr3(rs.getString("sm_addr3"));
				smdto.setSm_remark(rs.getString("sm_remark"));
				smdto.setSm_time(rs.getString("sm_time"));
				smdto.setSm_rest(rs.getString("sm_rest"));
				
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setString(1, str);
				rs1=pstmt1.executeQuery();
				List<imageDetailDTO> imgList=new ArrayList<imageDetailDTO>();
				
				while(rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				smdto.setImg_name(imgList);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
			
		return smdto;
	}
	public List<smDTO> sMemListFive(String query){
		List<smDTO> list = new ArrayList<smDTO>();
		
		String sql = "select * from sales_member where rownum<=5 and sm_id !='admin' ";
		
		if(query != null) {
			sql = "select * from sales_member where shop_name like '%'||?||'%'";
		}
		
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I01' and section_no=?";

		PreparedStatement pstmt1;
		ResultSet rs1;
		
		try {
			pstmt=conn.prepareStatement(sql);
			if(query!=null) {
				pstmt.setString(1, query);
			}
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				smDTO sdto = new smDTO();
				sdto.setSm_id(rs.getString("sm_id"));
				sdto.setShop_name(rs.getString("shop_name"));
				sdto.setSm_name(rs.getString("sm_name"));
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setString(1, rs.getString("sm_id"));
				rs1=pstmt1.executeQuery();
				List<imageDetailDTO> imgList=new ArrayList<imageDetailDTO>();
				while(rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				sdto.setImg_name(imgList);
				list.add(sdto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	public List<smDTO> sMemList(String query){
		List<smDTO> list = new ArrayList<smDTO>();
		
		String sql = "select * from sales_member where sm_id !='admin'";
		
		if(query != null) {
			sql = "select * from sales_member where shop_name=?";
		}
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I01' and section_no=?";
		
		PreparedStatement pstmt1;
		ResultSet rs1;
		
		try {
			pstmt=conn.prepareStatement(sql);
			if(query!=null) {
				pstmt.setString(1, query);
			}
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				smDTO sdto = new smDTO();
				sdto.setSm_id(rs.getString("sm_id"));
				sdto.setShop_name(rs.getString("shop_name"));
				sdto.setSm_name(rs.getString("sm_name"));
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setString(1, rs.getString("sm_id"));
				rs1=pstmt1.executeQuery();
				List<imageDetailDTO> imgList=new ArrayList<imageDetailDTO>();
				while(rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				sdto.setImg_name(imgList);
				list.add(sdto);
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
