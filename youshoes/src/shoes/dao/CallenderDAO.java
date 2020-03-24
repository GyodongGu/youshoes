package shoes.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import shoes.dto.dailyWorkDTO;
import shoes.dto.reservationDTO;

public class CallenderDAO extends DAO{

	//예약 일정 인서트
	public int insertform(reservationDTO dto) {
		int result = 0;
		try {
			String sql = "insert into reservation(res_no, sm_id, res_date, ord_no) values ((select max(res_no)+1 from reservation), ?, to_date(?,'yyyy/mm/dd hh24:mi:ss'), (select max(ord_no) from ord))";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSm_id());
			pstmt.setString(2,  dto.getReserv_date());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}
	
	//예약 일정 뷰
	public List<Map<String, Object>> selectform(String id) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			String sql = "select to_char(res_date, 'yyyy-mm-dd')||'T'||to_char(res_date, 'hh24:mi:ss') res_date, res_no from reservation where sm_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("title", "예약");
				map.put("start", rs.getString("res_date"));
				map.put("id", rs.getInt("res_no"));
				list.add(map);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	//휴일 일정 뷰
	public List<Map<String, Object>> selectRes(String id) {
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		try {
			String sql = "select to_char(rest_date, 'yyyy-mm-dd') rest_date \r\n" + 
					"from daily_work \r\n" + 
					"where sm_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("title", "휴일");
				map.put("start", rs.getString("rest_date"));
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	// 예약 일정 삭제
	public void deleteform(reservationDTO dto) {
		try {
			String sql = "delete from reservation where res_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getRes_no());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
}
