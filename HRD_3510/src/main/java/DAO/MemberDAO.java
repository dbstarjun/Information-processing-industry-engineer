package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.MemberVO;
import connom.DBUtils;

public class MemberDAO {

	public ArrayList<MemberVO> getMemberVO() {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			conn = DBUtils.getConnection();
			String sql = "";
		
		
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setCustno(0);
				vo.setCustname(sql);
				vo.setPhone(sql);
				vo.setAddress(sql);
				vo.setJoindate(null);
				vo.setGrade(sql);
				vo.setCity(sql);
			}
		} catch (SQLException e) {
			System.out.println("목록 조회중 오류");
			e.printStackTrace();
		} finally {
			DBUtils.close(conn, ps, rs);
		} 
		return list;
	}
}
