package dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.DBUtils;
import vo.MemberMoneyVO;
import vo.MemberVO;

public class MemberDao {

	/* 회원목록 조회 */
	public ArrayList<MemberVO> getMember() {

		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "select custno, custname, phone, address, joindate, \r\n"
				+ "decode(grade, 'A','VIP', 'B','일반', 'C','직원') grade, city \r\n" + "from member_tbl_02 \r\n"
				+ "order by custno";

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setCustno(rs.getInt("custno"));
				vo.setCustname(rs.getString("custname"));
				vo.setPhone(rs.getString("phone"));
				vo.setAddress(rs.getString("address"));
				vo.setJoindate(rs.getDate("joindate"));
				vo.setGrade(rs.getString("grade"));
				vo.setCity(rs.getString("city"));
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("회원목록조회중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps, rs);
		}

		return list;

	}

	/* 회원번호조회 */
	public int getMaxNO() {

		int nextCustno = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "SELECT MAX(custno)+1 nextCustNO From member_tbl_02";

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				nextCustno = rs.getInt("nextCustno");
			}
		} catch (SQLException e) {
			System.out.println("회원 번호 조회중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps, rs);
		}
		return nextCustno;

	}

	/* 회원목록추가 */
	public int insertMember(MemberVO vo) {

		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		conn = DBUtils.getConnection();
		String sql = "INSERT INTO member_tbl_02 VALUES(?, ?, ?, ?, ?, ?, ?)";

		try {
			System.out.println(vo.getCity());
			ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getCustno());
			ps.setString(2, vo.getCustname());
			ps.setString(3, vo.getPhone());
			ps.setString(4, vo.getAddress());
			ps.setDate(5, vo.getJoindate());
			ps.setString(6, vo.getGrade());
			ps.setString(7, vo.getCity());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("회원목록추가중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps);
		}
		return result;

	}

	/* 선택한 회원조회 */
	public MemberVO getMemberSelected(int custno) {
		MemberVO vo = new MemberVO();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "SELECT * FROM member_tbl_02 where custno" + custno;

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			if (rs.next()) {
				vo.setCustno(rs.getInt("custno"));
				vo.setCustname(rs.getString("custname"));
				vo.setPhone(rs.getString("address"));
				vo.setAddress(rs.getString("joindate"));
				vo.setJoindate(rs.getDate("joindate"));
				vo.setGrade(rs.getString("grade"));
				vo.setCity(rs.getString("city"));
			}
		} catch (SQLException e) {
			System.out.println("선택한 회원조회중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps, rs);
		}

		return vo;

	}

	public int updateMember(MemberVO vo) {

		int result = 0;

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "";

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getCustname());
			ps.setString(2, vo.getPhone());
			ps.setString(3, vo.getAddress());
			ps.setDate(4, vo.getJoindate());
			ps.setString(5, vo.getGrade());
			ps.setString(6, vo.getCity());
			ps.setInt(7, vo.getCustno());
		} catch (SQLException e) {
			System.out.println("회원목록수정중 오류");
		} finally {
			DBUtils.close(conn, ps);
		}

		return result;

	}
	
	public int deleteMember(int custno) {
		
		int result = 0;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "DELETE FROM member_tbl_02 WHERE custno = ?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, custno);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("회원삭제중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps);
		}
		
		return result;
		
	}
	
	public ArrayList<MemberMoneyVO> getmemberMoney() {
		
		ArrayList<MemberMoneyVO> list = new ArrayList<MemberMoneyVO>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn = DBUtils.getConnection();
		String sql = "select A.custno, A.custname, "
				+ "decode(A.grade, 'A', 'VIP', 'B', '일반', 'C','직원') grade, SUM(price)price\r\n"
				+ "from member_tbl_02 A, money_tbl_02 B\r\n" + "where A.custno=B.custno\r\n"
				+ "group by A.custno, A.custname, A.grade\r\n" + "order by price desc";
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				MemberMoneyVO vo = new MemberMoneyVO();
				vo.setCustno(rs.getInt("custno"));
				vo.setCustname(rs.getString("custname"));
				vo.setGrade(rs.getString("grade"));
				vo.setPrice(rs.getInt("price"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			System.out.println("회원 매출 조회중 오류");	
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps, rs);
		}
		
		return list;
		
	}

}
