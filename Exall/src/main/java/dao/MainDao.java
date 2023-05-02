package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.DBUtil;
import dto.firstListDto;

public class MainDao {
	Connection  conn = null;
	PreparedStatement ps  = null;
	ResultSet rs = null;
	
	final String SelectAll = "select s.student_no, s.student_name, s.dept_code, \r\n"
			+ "to_char(to_date(s.hire_date, 'yyyymmdd'), 'yyyy\"년\"mm\"월\"dd\"일\"') as hire_date, \r\n"
			+ "s.grade  \r\n"
			+ "from student_2021 s";
	final String Selectno = "select * from student_2021 where student_no=?";
	
	public ArrayList<firstListDto> getstlist() {
		ArrayList<firstListDto> list = new ArrayList<>();
			try {
				conn = DBUtil.getConnection();
				ps = conn.prepareStatement(SelectAll);
				rs = ps.executeQuery();
				while (rs.next()) {
					String student_no =  rs.getString("student_no");
					String student_name =  rs.getString("student_name");
					String dept_code =  rs.getString("dept_code");
					String hire_date  =  rs.getString("hire_date");
					String grade =  rs.getString("grade");
					firstListDto dto = new firstListDto(student_no, student_name, dept_code, hire_date, grade);
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBUtil.Close(conn, ps, rs);
			}
		return list;
	}
	
	public firstListDto getno(String no) {
		firstListDto dto = new firstListDto();
		try {
			conn = DBUtil.getConnection();
			ps = conn.prepareStatement(Selectno);
			ps.setString(1, no);
			rs = ps.executeQuery();
			while (rs.next()) {
				dto.setStudent_no(rs.getString("student_no"));
				dto.setStudent_name(rs.getString("student_name"));
				dto.setDept_code(rs.getString("dept_code"));
				dto.setHire_date(rs.getString("hire_date"));
				dto.setGrade(rs.getString("grade"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.Close(conn, ps, rs);
		}
		return dto;
	}
}
