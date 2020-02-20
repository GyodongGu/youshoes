package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.bookmarkDTO;
import shoes.dto.imageDTO;
import shoes.dto.imageDetailDTO;
import shoes.dto.pdtDTO;


/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 bookmarkDAO를 생성
 * 1. 즐겨찾기한 목록 갖고오기 bookmarkGet()
 * 
 */

public class bookmarkDAO extends DAO {
	private bookmarkDTO dto;
	private ArrayList<bookmarkDTO> list;
	
	public bookmarkDAO() {
		super();
	}
	
	
	public List<bookmarkDTO> bookmarkGet(int id) {  // 1. 즐겨찾기한 목록 갖고오기 bookmarkGet()
		List<bookmarkDTO> list = new ArrayList<bookmarkDTO>();
		String sql = "select p.*, getimage('I02', p.pdt_no) as img_name " 
				   + "from bookmark bk join product p "
				   + "on bk.pdt_no = p.pdt_no "
				   + "where pm_no=?";  // 접속한 유저의 찜 목록의 이름 갖고오기
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bookmarkDTO dto = new bookmarkDTO();
				dto.setPdt_no(rs.getInt("pdt_no"));
				
				pdtDTO pdto = new pdtDTO();
				pdto.setPdt_name(rs.getString("pdt_name"));

				
				imageDetailDTO imgDTO = new imageDetailDTO();
				imgDTO.setImg_name(rs.getString("img_name"));
				
				dto.setPdt_name(pdto);
				dto.setImg_name(imgDTO);
				
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
