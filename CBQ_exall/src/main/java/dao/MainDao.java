package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.DBUtils;
import dto.EmpmoneyDto;

public class MainDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	final String emplist = "select * from tbl_employee_202205 aa, tbl_work_202205 bb \r\n"
							+ "where aa.emp_no = bb.emp_no";  
	
	public ArrayList<EmpmoneyDto> getemplist() {
		ArrayList<EmpmoneyDto> list = new ArrayList<>();
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement(emplist);
			rs = ps.executeQuery();
			while (rs.next()) {
				EmpmoneyDto dto = new EmpmoneyDto(
					rs.getString("emp_no"), 
					rs.getString("emp_name"),
					rs.getString("hire_date"),
					rs.getString("dept_name"),
					rs.getString("job"),
					rs.getInt("absence"),
					rs.getInt("night"),
					rs.getInt("holiday"),
					rs.getInt("business_trip"),
					rs.getInt("salary")
				);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.close(conn, ps, rs);
		}
		return list;
	}

}
