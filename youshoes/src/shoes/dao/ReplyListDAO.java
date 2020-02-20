package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.likeDTO;
import shoes.dto.replyDTO;

public class ReplyListDAO extends DAO{
	public List<replyDTO> ReplyList(int rno){
		List<replyDTO> list = new ArrayList<replyDTO>();
		
		String sql="select * from reply where rw_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				replyDTO rpdto=new replyDTO();
				rpdto.setReply_no(rs.getInt("reply_no"));
				rpdto.setReply_date(rs.getDate("reply_date"));
				rpdto.setReply_content(rs.getString("reply_content"));
				rpdto.setReply_member(rs.getString("reply_member"));
				list.add(rpdto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	public int insertReply(replyDTO rdto) {
		
		String sql="insert into reply values((select max(reply_no)+1 from reply), ?, sysdate, ?, ?)";//리뷰글번호, 댓글내용, 댓글작성자
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rdto.getRw_no());
			pstmt.setString(2, rdto.getReply_member());
			pstmt.setString(3, rdto.getReply_content());
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}

	
}
