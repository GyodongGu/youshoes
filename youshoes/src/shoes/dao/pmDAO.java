package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.pmDTO;

/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 pmDAO를 생성 
 * 1. 회원목록 전체 조회            pmSelect()
 * 2. 회원 등록 등록                  pmInsert() 
 * 3. 회원 정보 수정                  pmUpdate()
 * 4. 회원 정보 삭제                  pmDelete()
 * 5. 회원가입창에서 아이디 중복체크  idOverlapCheck()
 * 6. 로그인 체크                      loginCheck()
 * 7. 구매회원 현재 포인트 확인  selectPoint()
 */

/**
 * purchase_member 테이블 pm_no, pm_id, pm_pw, pm_name, pm_stat_cd, pm_birth,
 * pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2, point_now
 *
 */

public class pmDAO extends DAO {
	private pmDTO dto;
	private ArrayList<pmDTO> list;

	public pmDAO() {
		super();
	}

	public ArrayList<pmDTO> pmSelect() { // 1. 회원목록 전체 조회 pmSelect()
		list = new ArrayList<pmDTO>();
		String sql = "select * from purchase_member";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new pmDTO();
				dto.setPm_no(rs.getInt("pm_no"));
				dto.setPm_id(rs.getString("pm_id"));
				dto.setPm_pw(rs.getString("pm_pw"));
				dto.setPm_name(rs.getString("pm_name"));
				dto.setPm_stat_cd(rs.getString("pm_stat_cd"));
				dto.setPm_birth(rs.getDate("pm_birth"));
				dto.setPm_email(rs.getString("pm_email"));
				dto.setPm_date(rs.getDate("pm_date"));
				dto.setPm_tell(rs.getString("pm_tell"));
				dto.setPm_post(rs.getString("pm_post"));
				dto.setPm_addr1(rs.getString("pm_addr1"));
				dto.setPm_addr2(rs.getString("pm_addr2"));
				dto.setPm_addr3(rs.getString("pm_addr3"));
				dto.setPoint_now(rs.getInt("point_now"));
				dto.setMgr_auth_cd(rs.getString("mgr_auth_cd"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int pmInsert(pmDTO dto) { // 2. 회원 등록 (회원 가입) pmInsert()
		int n = 0;
		/* 유승우 2020.02.10 뭘 넣어야 할지 아직 모르겠음 */
		String sql = "insert into purchase_member(pm_no, pm_id, pm_pw, pm_name, pm_stat_cd, pm_birth, pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2, pm_addr3, point_now, mgr_auth_cd )"
				+ " values((select max(pm_no)+1 from purchase_member), ?, ?, ?, 'ACT04', ?, ?, sysdate, ?, ?, ?, ?, ?, 500,'M03')";

		// 회원번호, 아이디, 비번, 이름, 상태, 생년월일, 이메일, 가입일, 전화번호, 우편번호, 주소1, 주소2, 주소3, 포인트
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_id());
			pstmt.setString(2, dto.getPm_pw());
			pstmt.setString(3, dto.getPm_name());
			pstmt.setDate(4, dto.getPm_birth());
			pstmt.setString(5, dto.getPm_email());
			pstmt.setString(6, dto.getPm_tell());
			pstmt.setString(7, dto.getPm_post());
			pstmt.setString(8, dto.getPm_addr1());
			pstmt.setString(9, dto.getPm_addr2());
			pstmt.setString(10, dto.getPm_addr3());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int pmUpdate(pmDTO dto, String pmId) { // 3. 회원 정보 수정 pmUpdate()
		int p = 0;
		try {
			String sql = "update purchase_member set pm_name = ?, pm_email = ?, pm_tell = ?,"
					   + "pm_post=?, pm_addr1=?, pm_addr2=?, pm_addr3=? where pm_id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_name());
			pstmt.setString(2, dto.getPm_email());
			pstmt.setString(3, dto.getPm_tell());
			pstmt.setString(4, dto.getPm_post());
			pstmt.setString(5, dto.getPm_addr1());
			pstmt.setString(6, dto.getPm_addr2());
			pstmt.setString(7, dto.getPm_addr3());
			pstmt.setString(8, pmId);
			
			p = pstmt.executeUpdate();
			System.out.println("회원정보가 "+p+"건 변경되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return p;
	}

	public void pmDelete(String id) { // 4. 회원 정보 삭제 pmDelete()
		try {
			String sql = "delete from purchase_memeber where pm_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public boolean idOverlapCheck(String id) { // 5. 회원가입창에서 아이디 중복체크 idOverlapCheck()
		boolean bol = true;
		String sql = "select pm_id from purchase_member where pm_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString("pm_id")==null || rs.getString("pm_id")=="" ) {
					bol=true;
				}else {
					bol=false;
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bol;
	}

	public String loginCheck(String id, String pw) { // 6. 로그인 체크 loginCheck()
		String grant = null;
		String sql = "select mgr_auth_cd from purchase_member where pm_id = ? and pm_pw=?";
		String sql1 = "select mgr_auth_cd from sales_member where sm_id=? and sm_pw=?";
		
		PreparedStatement pstmt1;
		ResultSet rs1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			if (rs.next())
				grant = rs.getString("mgr_auth_cd");
			
			if(grant==null) {
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setString(1, id);
				pstmt1.setString(2, pw);
				rs1=pstmt1.executeQuery();
				if(rs1.next()) {
					grant=rs1.getString("mgr_auth_cd");
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant; // 로그인 성공 시 권한을 넘겨줌
	}

	public int selectPoint(int id) { // 7. 구매회원 현재 포인트 확인 selectPoint()
		int n = 0;
		//String sql = "select sum(point_charge) as idpoint from point where pm_no=?";
		String sql = "select point_now from purchase_member where pm_no=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				n = rs.getInt("point_now");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public pmDTO selectOne(String id) { // 8. 단건조회 selectOne()
		pmDTO dto = new pmDTO();
		String sql = "select * from purchase_member where pm_id = ? ";
		String sql1="select img_name from image i join image_detail d on i.img_no=d.img_no where section='I04' and section_no=?";
		
		PreparedStatement pstmt1;
		ResultSet rs1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setPm_no(rs.getInt("pm_no"));
				dto.setPm_id(rs.getString("pm_id"));
				dto.setPm_name(rs.getString("pm_name"));
				dto.setPm_stat_cd(rs.getString("pm_stat_cd"));
				dto.setPm_birth(rs.getDate("pm_birth"));
				dto.setPm_email(rs.getString("pm_email"));
				dto.setPm_date(rs.getDate("pm_date"));
				dto.setPm_tell(rs.getString("pm_tell"));
				dto.setPm_post(rs.getString("pm_post"));
				dto.setPm_addr1(rs.getString("pm_addr1"));
				dto.setPm_addr2(rs.getString("pm_addr2"));
				dto.setPm_addr3(rs.getString("pm_addr3"));
				dto.setPoint_now(rs.getInt("point_now"));
				dto.setMgr_auth_cd(rs.getString("mgr_auth_cd"));
				
				pstmt1=conn.prepareStatement(sql1);
				pstmt1.setString(1, id);
				rs1 = pstmt1.executeQuery();
				if(rs1.next()) {
					dto.setImg_name(rs1.getString("img_name"));
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto; // 한 회원의 정보를 넘김
	}
	public int pointUpdate(int pmNo, int chargePoint) {   // 9. 구매 회원이 포인트를 충전하고 현재 포인트에 추가
		int upPoint = 1;
		try {
			pstmt = conn.prepareCall("{call POINTUPDATE(?, ?)}");
			pstmt.setInt(1, pmNo);
			pstmt.setInt(2, chargePoint);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return upPoint;
	}
	
	public int refundPoint(int pmno, int point) {
		int result = 0;
		
		String sql ="update purchase_member set point_now = ? where pm_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			pstmt.setInt(2, pmno);
			result = pstmt.executeUpdate();
			System.out.println("보유포인트가 "+result +"건 변경되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result;
	}
	
	public int deletePm(int pmno) {
		int result = 0;
		
		String sql = "delete from purchase_member where pm_no = ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			result = pstmt.executeUpdate();
			System.out.println("고객 정보가"+result+"건 삭제되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	
}
