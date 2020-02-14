package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.imageDetailDTO;
import shoes.dto.likeDTO;
import shoes.dto.reviewDTO;



/**
 * @author User
 *
 *
 *         3. 구매회원이 자기가 쓴 리뷰페이지 보기 myReview()
 *
 */
public class reviewListDAO extends DAO{
	public List<reviewDTO> reviewlist(String smid, String pmid){
		
		List<reviewDTO> list= new ArrayList<reviewDTO>();
		
		String sql="select * from product p join purchase_review r on p.pdt_no=r.pdt_no where sm_id=?";
		
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I03' and section_no=?";
		
		String sql2="select * from push_like where rw_no=? and pm_id=? ";
		

		PreparedStatement pstmt1;
		ResultSet rs1;

		
		PreparedStatement pstmt2;
		ResultSet rs2;
		



		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, smid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// rw_no, pm_id, rw_cnt, rw_stars, rw_date, rw_content
				reviewDTO rdto = new reviewDTO();
				rdto.setRw_no(rs.getInt("rw_no"));
				rdto.setPm_id(rs.getString("pm_id"));
				rdto.setRw_cnt(rs.getInt("rw_cnt"));
				rdto.setRw_stars(rs.getInt("rw_stars"));
				rdto.setRw_date(rs.getDate("rw_date"));
				rdto.setRw_content(rs.getString("rw_content"));

				pstmt1 = conn.prepareStatement(sql1);
				pstmt1.setInt(1, rs.getInt("rw_no"));
				rs1 = pstmt1.executeQuery();
				List<imageDetailDTO> imgList = new ArrayList<imageDetailDTO>();

				while (rs1.next()) {
					imageDetailDTO imgDTO = new imageDetailDTO();
					imgDTO.setImg_name(rs1.getString("img_name"));
					imgList.add(imgDTO);
				}
				rdto.setImg_name(imgList);
				
				likeDTO ldto= new likeDTO();
				pstmt2=conn.prepareStatement(sql2);
				pstmt2.setInt(1, rs.getInt("rw_no"));
				pstmt2.setString(2, pmid); //문제부분
				rs2=pstmt2.executeQuery();
				while(rs2.next()) {
					ldto.setRw_no(rs2.getInt("rw_no"));
					ldto.setPm_id(rs2.getString("pm_id"));
				}
				rdto.setLikeview(ldto);
				
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
		String sql = "select img_name from image i join image_detail d on i.img_no=d.img_no where section='I03' and section_no=?";
		String name = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i);
			rs = pstmt.executeQuery();

			while (rs.next()) {
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


	public List<reviewDTO> myReview(String id) { // 3. 구매회원이 자기가 쓴 리뷰페이지 보기
		List<reviewDTO> list = new ArrayList<reviewDTO>();
		String sql = "select rw_no, rw_content, pm_id, rw_date from purchase_review where pm_id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				reviewDTO dto = new reviewDTO();
				dto.setRw_no(rs.getInt("rw_no"));
				dto.setRw_content(rs.getString("rw_content"));
				dto.setPm_id(rs.getString("pm_id"));
				dto.setRw_date(rs.getDate("rw_date"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}


}
