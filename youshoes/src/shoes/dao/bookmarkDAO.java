package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import shoes.dto.bookmarkDTO;


/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 bookmarkDAO를 생성
 * 1. 즐겨찾기한 목록 갖고오기 bookmarkGet()
 * 
 */

public class bookmarkDAO extends DAO {
	ArrayList<bookmarkDTO> list;
	bookmarkDTO dto;
	
	public bookmarkDAO() {
		super();
	}
	
	
	public ArrayList<bookmarkDTO> bookmarkGet() {
		list = new ArrayList<bookmarkDTO>();
		String sql = "select pdt_code, pdt_pick from bookmark"; // 상품을 찜누른거 불러와서 찜한 목록 불러오는 sql
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setPdt_code(rs.getInt("bookmarkCode"));
				dto.setPdt_pick(rs.getString("bookmarkPick"));
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
