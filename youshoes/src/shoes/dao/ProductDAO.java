package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.imageDetailDTO;
import shoes.dto.optDTO;
import shoes.dto.pdtDTO;

public class ProductDAO extends DAO{
	public List<pdtDTO> productList(String smid, String type, String gender, String kind){
		
		List<pdtDTO> list = new ArrayList<pdtDTO>();
		
		String sql = "select * from product where sm_id=? and pdt_type_cd=? and gender_cd=? and pdt_kind_cd=?";
												 //manshoes01	//P or C			//M or W		//S01,02,03
		
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I02' and section_no=?";
		
		PreparedStatement pstmt1;
		ResultSet rs1;

		
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
				
				pstmt1 = conn.prepareStatement(sql1);
				pstmt1.setInt(1, rs.getInt("pdt_no"));
				rs1=pstmt1.executeQuery();
				List<imageDetailDTO> imgList = new ArrayList<imageDetailDTO>();
				
				while(rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				pdto.setImg_name(imgList);
				
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
	
	public List<pdtDTO> ProductType(String smid){
		List<pdtDTO> typelist = new ArrayList<pdtDTO>();
		
		String sql = "select distinct pdt_type_cd from product where sm_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, smid);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pdtDTO pdto = new pdtDTO();
				pdto.setPdt_type_cd(rs.getString("pdt_type_cd"));
				
				typelist.add(pdto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return typelist;
	}
	
	public List<pdtDTO> ProductGender(String smid, String type){
		List<pdtDTO> genderlist = new ArrayList<pdtDTO>();
		
		String sql = "select distinct gender_cd from product where sm_id=? and pdt_type_cd=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, smid);
			pstmt.setString(2, type);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pdtDTO pdto = new pdtDTO();
				pdto.setGender_cd(rs.getString("gender_cd"));
				
				genderlist.add(pdto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return genderlist;
	}
	
	public List<pdtDTO> ProductKind(String smid, String type, String gender ){
		List<pdtDTO> kindlist = new ArrayList<pdtDTO>();
		
		String sql = "select distinct pdt_kind_cd from product where sm_id=? and pdt_type_cd=? and gender_cd=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, smid);
			pstmt.setString(2, type);
			pstmt.setString(3, gender);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pdtDTO pdto = new pdtDTO();
				pdto.setPdt_kind_cd(rs.getString("pdt_kind_cd"));
				
				kindlist.add(pdto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return kindlist;
	}
	
	public pdtDTO productDetail(int no) {
		
		pdtDTO pdto = new pdtDTO();
		String sql = "select * from product where pdt_no=?";
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I02' and section_no=?";
		String sql2="select * from opt where pdt_no=?";
		PreparedStatement pstmt1;
		ResultSet rs1;

		PreparedStatement pstmt2;
		ResultSet rs2;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pdto.setPdt_no(rs.getInt("pdt_no"));
				pdto.setPdt_name(rs.getString("pdt_name"));
				pdto.setSm_id(rs.getString("sm_id"));
				pdto.setPdt_type_cd(rs.getString("pdt_type_cd"));
				pdto.setGender_cd(rs.getString("gender_cd"));
				pdto.setPdt_kind_cd(rs.getString("pdt_kind_cd"));
				pdto.setPdt_price(rs.getInt("pdt_price"));
				pdto.setPdt_stat_cd(rs.getString("pdt_stat_cd"));
				pdto.setPdt_date(rs.getDate("pdt_date"));
				
				pstmt1 = conn.prepareStatement(sql1);
				pstmt1.setInt(1, rs.getInt("pdt_no"));
				rs1=pstmt1.executeQuery();
				List<imageDetailDTO> imgList = new ArrayList<imageDetailDTO>();
				
				while(rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				pdto.setImg_name(imgList);
				
				pstmt2= conn.prepareStatement(sql2);
				pstmt2.setInt(1, rs.getInt("pdt_no"));
				rs2=pstmt2.executeQuery();
				List<optDTO> optlist = new ArrayList<optDTO>();
				while(rs2.next()) {
					optDTO oDTO = new optDTO();
					oDTO.setPdt_no(rs2.getInt("pdt_no"));
					oDTO.setPdt_size_cd(rs2.getInt("pdt_size_cd"));
					oDTO.setPdt_color_cd(rs2.getString("pdt_color_cd"));
					optlist.add(oDTO);
				}
				pdto.setOptlist(optlist);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return pdto;
	}
		
}
